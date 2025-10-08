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
                      -Dsonar.host.url=http://13.233.77.77:8082 \
                      -Dsonar.login=squ_b31bf2ad9bc4f8ab8d162fe9b6ce11fb9a7689dc
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
