pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('List Files') {
            steps {
                script {
                    sh 'ls -R'
                }
            }
        }

        stage('Main Branch Only') {
            when {
                branch 'main'
            }
            steps {
                script {
                    echo 'This stage runs only on the main branch'
                    // Add your main branch specific steps here
                    sh 'echo "Running on main branch"'
                }
            }
        }
    }

    post {
        always {
            echo 'Job completed'
        }
    }
}
