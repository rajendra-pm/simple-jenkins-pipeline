pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building the Application...'
                sh 'docker build -t myapp:latest .'
            }
        }
        stage('Test') {
            steps {
                echo 'Test stage...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy stage...'
            }
        }
    }
    post {
        always {
            echo 'Pipeline finished!'
        }
    }
}
