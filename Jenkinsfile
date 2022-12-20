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
                    if (isUnix()) {
                        sh 'ls -R'
                    } else {
                        bat 'dir /s /b'
                    }
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
