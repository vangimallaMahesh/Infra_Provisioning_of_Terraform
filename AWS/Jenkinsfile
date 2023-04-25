pipeline {
    agent any
    
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
       stage ("Terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        
        stage ("Validate") {
            steps {
                sh ('terraform validate')
            }
        }
        
        stage ("Plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage (" Action") {
            steps {
                 echo "Terraform action is --> ${action}"
                 sh ('terraform ${action} --auto-approve')
           }
        }
    }
}
