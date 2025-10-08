pipeline {

    agent any

    tools {
        maven 'Maven'
    }

    stages {

        stage('SCM-GIT') {
            steps {
                git branch: 'main', url: 'https://github.com/rakeshkumar2398/Devop-Project.git'
            }
        }

        stage('SONARQUBE-SCA') {
            steps {
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
                sh 'mvn clean install'
            }
        }

        stage('TOMCAT-DEPLOY') {
            steps {
                sh '''
                    WAR_FILE=$(find /var/jenkins_home/workspace -type f -name "*.war" | head -n 1)
                    docker cp "$WAR_FILE" tomcat-ct:/usr/local/tomcat/webapps/
                    docker restart tomcat-ct
                '''
            }
        }

		stage('DOCKER-BUILD-IMAGE') {
            steps {
                sh 'docker build -t app:latest . || true'
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
