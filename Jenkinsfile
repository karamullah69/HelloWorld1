pipeline {
    agent any
    
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
                sh 'docker build -t hello-world-1 .'  // or any packaging command
            }
        }
    }
}
