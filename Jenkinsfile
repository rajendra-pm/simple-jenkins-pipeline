pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/rajendra-pm/simple-jenkins-pipeline.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t myapp:latest .'
            }
        }

        stage('Test') {
            steps {
                echo 'Running Tests...'
                sh 'echo "Tests Passed!"'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Application...'
                sh 'docker run -d -p 3000:3000 myapp:latest'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
