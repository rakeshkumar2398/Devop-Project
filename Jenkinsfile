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
        echo '🚀 Copying WAR file to Tomcat container...'
        sh '''
            WAR_FILE=$(find /var/jenkins_home/workspace/ -type f -name "*.war" | head -n 1)
            docker cp "$WAR_FILE" tomcat-ct:/usr/local/tomcat/webapps/
            docker restart tomcat-ct '''
    }
}
		
        stage('DOCKER-BUILD-IMAGE') {
            steps {
                echo 'Building Img from WAR file'
                sh 'docker build -t app:latest .'
            }
        }

        stage('TRIVY-IMGSCAN') {
            steps {
                sh 'trivy image app:latest'
            }
        }

    }
}
