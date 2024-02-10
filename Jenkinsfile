pipeline {
    agent {
       node {
           label 'Agent-1'
       }
    }
    // environment { 
    //     packageVersion = ''
    //     nexusURL = '172.31.8.233:8081'
    // }
    options {
        timeout(time: 1, unit: 'HOURS') 
        disableConcurrentBuilds()
        ansicolor('xterm')
    }
    parameters {
        string(name: 'version', defaultValue: '', description: 'What is the artifact version?')
        string(name: 'environment', defaultValue: '', description: 'What is the environment?')
    }    
   //   build
    stages {
        
        stage('print version') {
            steps {
                sh """
                    echo "version: ${params.version}"
                    echo "environment: ${params.environment}"
                """
            }  
        }
        stage('Init') {
            steps {
                sh """
                    cd terraform
                    terraform init --backend-config=${params.environment}/backend.tf -reconfigure
                """
            }  
        }
         stage('plan') {
            steps {
                sh """
                    cd terraform
                    terraform plan -var-file=${params.environment}/${params.environment}.tfvars -var="app_version=${params.version}"
                """
            }  
        }           
                     
    }   
    //  post build
    post { 
        always { 
            echo 'I will always say Hello again!'
            deleteDir()
        }
        failure { 
            echo 'This will runs when pipeline is failed, used generally to send some alerts'
        }
        success{
            echo 'I will say hello when pipeline is success'
        }
    
    }
}