pipeline {

    agent any
    stages {
            stage('Cloning our Git') {
                steps {
                git 'git@github.com:gauravmathursalesforce/test-k8s.git'
                }
            }

            stage('Building Docker Image') {
                steps {
                    script {
                        dockerImage = docker.build registry + ":$BUILD_NUMBER"
                    }
                }
            }

           
        }
    }
