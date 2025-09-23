pipeline {
    agent any

    environment {
        APP_NAME = 'myapp'
        IMAGE_TAG = 'latest'
        GIT_URL = 'https://github.com/rajendra-pm/simple-jenkins-pipeline.git'
        BRANCH = 'main'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out Git repository...'
                checkout([$class: 'GitSCM',
                          branches: [[name: "${BRANCH}"]],
                          doGenerateSubmoduleConfigurations: false,
                          extensions: [[$class: 'CleanCheckout']],
                          userRemoteConfigs: [[url: "${GIT_URL}"]]
                ])
            }
        }

        stage('Build') {
            steps {
                echo 'Building Docker image...'
                sh "docker build -t ${APP_NAME}:${IMAGE_TAG} ."
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Replace with real test command if available
                sh 'echo "Tests Passed!"'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Application...'
                // Stop and remove previous container if exists
                sh "docker stop ${APP_NAME} || true"
                sh "docker rm ${APP_NAME} || true"
                // Run new container
                sh "docker run -d --name ${APP_NAME} -p 3000:3000 ${APP_NAME}:${IMAGE_TAG}"
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
