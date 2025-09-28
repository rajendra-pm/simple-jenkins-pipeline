pipeline {
    agent any

    environment {
        APP_NAME = "simple-jenkins-pipeline"
        IMAGE_NAME = "rajendrapm/${APP_NAME}"
        IMAGE_TAG = "latest"
    }

    stages {
        // Stage 1: Checkout source code from GitHub
        stage('Checkout') {
            steps {
                echo "Checking out source code..."
                git branch: 'main', url: 'https://github.com/rajendra-pm/simple-jenkins-pipeline.git'
            }
        }

        // Stage 2: Build Docker image with correct name and tag
        stage('Build') {
            steps {
                echo "Building Docker image..."
                sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }

        // Stage 3: Install dependencies and run tests
        stage('Test') {
            steps {
                echo "Installing dependencies and running tests..."
                sh "npm install"
                sh "npm test"
            }
        }

        // Stage 4: Deploy Docker container safely
        stage('Deploy') {
            steps {
                echo "Deploying container..."
                // Stop and remove existing container if it exists
                sh "docker rm -f ${APP_NAME} || true"
                // Run the new container
                sh "docker run -d -p 3000:3000 --name ${APP_NAME} ${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }
    }

    // Post actions
    post {
        success {
            echo "Pipeline completed successfully!"
        }
        failure {
            echo "Pipeline failed!"
        }
    }
}
