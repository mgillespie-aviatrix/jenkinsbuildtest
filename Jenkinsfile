pipeline {
    agent any

    environment {
        action = "apply"
    }

    stages {
        stage ("Terraform Init") {
            steps {
            sh ("terraform init")
            }
        }
        stage ("Terraform Action") {
            steps {
            echo "Terraform action is –> ${action}"
            sh ("/usr/local/bin/terraform ${action} –auto-approve")
            }
        }
    }
}