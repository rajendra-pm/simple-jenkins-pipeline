pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
               git branch: 'main', url: 'https://github.com/rajendra-pm/simple-jenkins-pipeline.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    sh 'docker build -t simple-jenkins-app .'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    sh 'echo "Running tests (you can add pytest/unittest here)"'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    sh 'docker run -d -p 5000:5000 --name simple-jenkins-container simple-jenkins-app'
                }
            }
        }
    }
}
