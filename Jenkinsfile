pipeline {

    agent any

    tools {
        maven 'Maven'
    }

    stages {

        stage('SCM-GIT') {
            steps {
                echo '📦 Cloning source code from GitHub...'
                git branch: 'main', url: 'https://github.com/rakeshkumar2398/Devop-Project.git'
            }
        }

        stage('SONARQUBE-SCA') {
            steps {
                echo '🔍 Running SonarQube Code Analysis...'
                sh '''
                    mvn sonar:sonar \
                      -Dsonar.projectKey=Devop-Project \
                      -Dsonar.host.url=http://15.206.89.172:8082 \
                      -Dsonar.login=squ_1ffb0f15117aeeb25f26554d771a90fc50b5e495
                '''
            }
        }

        stage('MAVEN-ARTIFACT') {
            steps {
                echo '⚙️ Building Maven Artifact (WAR file)...'
                sh 'mvn clean install'
            }
        }

        stage('TOMCAT-DEPLOY') {
            steps {
                echo '🚀 Deploying WAR file to Tomcat container...'
                sh '''
                    WAR_FILE=$(find /var/jenkins_home/workspace -type f -name "*.war" | head -n 1)
                    echo "📦 Found WAR: $WAR_FILE"

                    # Check if Tomcat container exists
                    docker ps --format '{{.Names}}' | grep -q '^tomcat-ct$' || {
                      echo "❌ Tomcat container not found!"; exit 1;
                    }

                    # Ensure webapps directory exists
                    docker exec tomcat-ct mkdir -p /usr/local/tomcat/webapps

                    # Copy WAR into Tomcat container
                    docker cp "$WAR_FILE" tomcat-ct:/usr/local/tomcat/webapps/ || {
                      echo "❌ Failed to copy WAR!"; docker exec tomcat-ct ls /usr/local/tomcat; exit 1;
                    }

                    echo "✅ WAR copied successfully — restarting Tomcat..."
                    docker restart tomcat-ct
                    echo "✅ Tomcat restarted successfully!"
                '''
            }
        }

        stage('DOCKER-BUILD-IMAGE') {
            steps {
                echo '🐳 Building Docker Image from WAR...'
                sh '''
                    docker build -t app:latest . || true
                    docker images | grep app || echo "⚠️ No image found!"
                '''
            }
        }

        stage('TRIVY-IMGSCAN') {
            steps {
                echo '🔎 Running Trivy vulnerability scan on Docker image...'
                sh '''
                    docker run --rm \
                      -v /var/run/docker.sock:/var/run/docker.sock \
                      -v ${WORKSPACE}/.trivy-cache:/root/.cache/ \
                      aquasec/trivy:latest image app:latest || true
                '''
            }
        }
    }
}
