pipeline {
    agent any

    stages {
        stage("Paso 1: Checkout") {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/gongarher/hello-world-terraform']]])
            }
        }
        
        stage ("Paso 2: Terraform init") {
            steps {
                sh ('terraform init -reconfigure') 
            }
        }
        stage ("Paso 3: Terraform plan") {
            steps {
                sh ('terraform plan') 
            }
        }
                
        stage ("Paso 4: Terraform action (apply/destroy)") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
        
        stage ("Paso 5: Final") {
            steps {
                echo "Despliegue de terraform correctisimo3" 
           }
        }
    }
}