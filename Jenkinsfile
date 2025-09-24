pipeline {
    agent any

    environment {
        APP_NAME = "simple-jenkins-pipeline"
        IMAGE_NAME = "rajendrapm/${APP_NAME}"
        IMAGE_TAG = "latest"
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out source code..."
                git branch: 'main', url: 'https://github.com/rajendra-pm/simple-jenkins-pipeline.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building Docker image..."
                sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                sh "npm test"
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying container..."
                sh "docker run -d -p 3000:3000 --name ${APP_NAME} ${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }
    }
}
