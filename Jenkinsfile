pipeline {
  agent { label 'docker-slave' }
  
  stages {
    stage('checkout-scm') {
      steps {
        checkout scm
      }
    }
    
    stage('build-image') {
        steps {
            sh 'cd deploy && /usr/local/bin/packer build ec2-nginx-test.json'
        }
    }
  }
  
}
