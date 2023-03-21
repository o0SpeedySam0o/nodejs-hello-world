pipeline {
  agent {
    docker {
      image 'docker:20.10.7'
      args '-v /var/run/docker.sock:/var/run/docker.sock'
    }
  }
  stages {
    stage('Build Docker Image') {
      steps {
        script {
          def dockerImage = docker.build("my-image:${env.BUILD_ID}")
        }
      }
    }
    stage('Push Docker Image') {
  steps {
    script {
      docker.withRegistry('832972724493.dkr.ecr.us-east-1.amazonaws.com/speedsam', 'bobaws') {
        def dockerImage = docker.image("my-image:${env.BUILD_ID}")
        dockerImage.push()
      }
    }
  }
}
  }
}