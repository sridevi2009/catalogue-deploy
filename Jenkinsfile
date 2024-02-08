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
    }
    parameters {
        string(name: 'version', defaultValue: '1.0.0', description: 'What is the artifact version?')
        string(name: 'environment', defaultValue: 'dev', description: 'What is the environment?')
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