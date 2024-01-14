pipeline {
    agent any
    
    tools {
        maven 'Maven'
    }
    
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install'  // or any build command
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'  // or any test command
            }
        }
        stage('Package') {
            steps {
                sh 'docker build -t hello-world-1 --build-arg CERT_PATH=/home/user/ca.pem .'  // or any packaging command
            }
        }
        stage('Deploy to Kubernetes') {
           steps {
             script {
               sh 'kubectl apply -f kubernetes/hello-world-1-deployment.yaml'
             }
           }
        }
  
    }
}
