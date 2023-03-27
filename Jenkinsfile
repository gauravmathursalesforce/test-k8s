pipeline {
    agent any
    stages {


            stage('Building Docker Image') {
                steps {
                    sh 'docker build -t gauravmathur/test-k8s:v2 .'
                }
            }

           
        }
    }
