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
                echo 'Running Tests...'
                // Example: run tests if available
                sh 'echo "No tests yet!"'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Application...'
                // Run Docker container (simulate deploy)
                sh 'docker run -d -p 3000:3000 --name myapp_container myapp:latest || true'
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
