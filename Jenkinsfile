pipeline {
    agent any

    environment {
        STUDENT_NAME    = 'Eduard'
        STUDENT_SURNAME = 'Pan'
        STUDENT_GROUP   = 'IT2-2312'
        STUDENT_ID      = '37619'
        IMAGE_NAME      = 'pan-eduard-devops'
        CONTAINER_NAME  = 'pan-eduard-container'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'git log -1 --oneline'
            }
        }
        stage('Build') {
            steps {
                echo "Student: ${env.STUDENT_NAME} ${env.STUDENT_SURNAME}"
                echo "Group: ${env.STUDENT_GROUP}"
                echo "Student ID: ${env.STUDENT_ID}"
                sh 'chmod +x app/app.sh scripts/Pan_Eduard_system.sh'
                sh 'ls -la'
            }
        }
        stage('Test') {
            steps {
                sh 'test -f Dockerfile'
                sh 'test -f app/app.sh'
                sh 'grep -q "37619" Pan_Eduard_info.txt'
                sh 'sh -n app/app.sh'
                sh './scripts/Pan_Eduard_system.sh'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }
        stage('Docker Run') {
            steps {
                sh '''
                    docker rm -f $CONTAINER_NAME || true
                    docker run --name $CONTAINER_NAME \
                      -e STUDENT_NAME=$STUDENT_NAME \
                      -e STUDENT_SURNAME=$STUDENT_SURNAME \
                      -e STUDENT_GROUP=$STUDENT_GROUP \
                      -e STUDENT_ID=$STUDENT_ID \
                      $IMAGE_NAME
                '''
            }
        }
    }

    post {
        success { echo 'Pipeline finished successfully!' }
        failure { echo 'Pipeline failed. Check the logs above.' }
    }
}
