pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building the Application...'
                bat 'docker build -t myapp:latest .'
            }
        }
        stage('Test') {
            steps {
                echo 'Test stage (if any)...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy stage (if any)...'
            }
        }
    }
    post {
        always {
            echo 'Pipeline finished!'
        }
    }
}
