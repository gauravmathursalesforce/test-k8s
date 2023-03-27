pipeline {
    agent any
    stages {


            stage('Building Docker Image') {
                steps {
                    script {
                        dockerImage = docker.build + ":$BUILD_NUMBER"
                    }
                }
            }

           
        }
    }
