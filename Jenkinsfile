pipeline {
    agent any
    stages {
        stage ("Terraform Init") {
            steps {
            sh ("terraform init")
            }
        }
        stage ("apply") {
            steps {
            echo "Terraform action is –> ${action}"
            sh ("terraform ${action} –auto-approve")
            }
        }
    }
}