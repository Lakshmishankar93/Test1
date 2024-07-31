pipeline {
    agent any
    stages {
        stage('Stage 1') {
            steps {
                // Checkout code from Git repository
                git branch: 'main', credentialsId: 'gitconnect', url: 'https://github.com/Lakshmishankar93/Test1.git'
            }
        }
        stage('Stage 2 - Default Agent') {
            steps {
                // Navigate to the workspace directory
                sh 'cd /var/lib/jenkins/workspace/pipe31/'
                
                // Initialize Terraform
                sh 'terraform init'
                
                // Apply Terraform configurations
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
