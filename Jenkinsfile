pipeline {
 agent any

 stages {

  stage('Checkout Code') {
   steps {
    git 'https://github.com/sunilyadav1988/pythonapp.git'
   }
  }

  stage('Docker Build') {
   steps {
    sh 'docker build -t mydockerhubuser/myapp:latest .'
   }
  }

  stage('Docker Login') {
   steps {
    withCredentials([usernamePassword(credentialsId: 'dockerhub-cred', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
     sh 'echo $PASS | docker login -u $USER --password-stdin'
    }
   }
  }

  stage('Push Image') {
   steps {
    sh 'docker push mydockerhubuser/myapp:latest'
   }
  }

 }
}
