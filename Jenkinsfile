pipeline {
    agent any

    triggers {
        cron('H/5 * * * *')
    }

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
    }

    post {
        always {
            echo 'Job completed'
        }
    }
}
