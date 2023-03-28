pipeline {
    environment {
        APP_NAME = 'test-k8s'
        JENKINSFILE_LOCATION = 'JenkinsFile'
        DOCKER_REGISTRY = 'gauravmathursalesforce/test-k8s'
        VERSION="$BUILD_NUMBER"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Docker Build') {
            steps {
                script {
                     sh 'echo printenv'
                    
                     dockerImage = docker.build "${DOCKER_REGISTRY}" 
                }
            }
        }
        // stage('Docker Run') {
        //     steps {
        //         sh 'docker stop $(docker ps -a -q)'
        //         script {
        //             dockerImage.run("-p 8081:80")
        //         }
        //     }
        // }
        // stage('Image push to Artifactory') {
        //     steps {
        //         script {
        //                  docker.withRegistry( '', registryCredential ) {
        //                     dockerImage.push()
        //                 }
        //              }
        //         }
        //  }
        // stage('Deploy to k8s') {
        //     steps {
        //                withKubeConfig([credentialsId: 'kubeconfig']) {
        //                 sh 'cat deployment.yaml | sed "s/{{BUILD_NUMBER}}/${VERSION}/g" | kubectl apply -f -'
        //                 sh 'kubectl apply -f service.yaml'
        //                 }
        //         }
        //  }

    }
    post {
    always {
            echo 'This will always run'
            // mail bcc: '', body: 'A Test EMail', cc: '', from: '', replyTo: '', subject: 'A Test EMail', to: 'gauravmathur94@gmail.com'
    }
    success {
      echo 'This will run only if successful'
    }
    failure {
      echo 'This will run only if failed '
    }
    unstable {
      echo 'This will run only if the run was marked as unstable'
    }
    changed {
      echo 'This will run only if the state of the Pipeline has changed'
      echo 'For example, if the Pipeline was previously failing but is now successful'
    }
  }
}
