pipeline {
  agent docker-slave
  
  stages {
    stage('checkout-scm') {
      steps {
        checkout scm
      }
    }
    
    stage('build-image') {
        steps {
            sh 'cd deploy && packer build ec2-nginx-test.json'
        }
    }
  }
  
}
