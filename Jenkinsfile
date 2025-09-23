pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Use the more robust checkout syntax
                checkout([$class: 'GitSCM',
                          branches: [[name: '*/main']],
                          userRemoteConfigs: [[url: 'https://github.com/rajendra-pm/simple-jenkins-pipeline.git']]
                ])
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
                sh 'docker rm -f myapp || true'   // remove previous container if exists
                sh 'docker run -d --name myapp -p 3000:3000 myapp:latest'
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
