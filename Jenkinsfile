pipeline {
    agent any

    environment {
        IMAGE_NAME = "myapp"
        IMAGE_TAG = "latest"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM',
                    branches: [[name: 'main']],
                    userRemoteConfigs: [[url: 'https://github.com/rajendra-pm/simple-jenkins-pipeline.git']]
                ])
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image..."
                sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }

        stage('Run Container') {
            steps {
                echo "Running Docker container..."
                sh "docker run -d --name ${IMAGE_NAME}_container -p 3000:3000 ${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }
    }
}
