pipeline {
 agent any

 stages {

  stage('Checkout Code') {
   steps {
    git branch: 'main', url: 'https://github.com/sunilyadav1988/pythonapp.git'
   }
  }

  stage('Docker Build') {
   steps {
    sh 'docker build -t sunil093/myapp:latest .'
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
    sh 'docker push sunil093/myapp:latest'
   }
  }

 }
}
