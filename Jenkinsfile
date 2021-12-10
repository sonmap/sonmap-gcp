  pipeline {
    agent any
    tools {
        terraform 'Terraform12.12'

    }

    stages {  

      stage('Git Checkout') {
        steps {
          git branch: 'main', credentialsId: 'sonmap', url: 'https://github.com/sonmap/sonmap-gcp' 
         
        }      
      }

      stage('TF Init&Plan') {
        steps {
          sh 'terraform init'
          sh 'terraform plan'
        }      
      }

      

      stage('TF Apply') {
        steps {
          sh 'terraform apply --auto-approve'
        }
      }
    } 
  }
