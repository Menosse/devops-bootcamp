pipeline {
agent any
 
parameters {
    choice(
        name: 'TF_OPTION',
        choices: "apply\ndestroy",
        description: 'TF Action' )
  }
 
stages {
  stage('fetch_latest_code') {
    steps {
      git url: 'https://github.com/Menosse/devops-bootcamp.git', branch: 'main'
    }
  }

  stage('TF Init&Plan') {
    steps {
        script {
            
            if (params.TF_OPTION == 'apply' ) {
            dir('Vorx_jenkins'){
                // sh 'ls'
                // sh 'cd Vorx_ec2'
                // sh 'ls'
                sh 'terraform init'
                sh 'terraform plan -out=myplan.out'
            }
            }
            else {
                // sh 'cd Vorx_ec2'
                sh 'terraform init'
                sh 'terraform plan -destroy -out=myplan.out '
            }
        }
    }      
  }

  stage('Approval') {
    steps {
      script {
        def userInput = input(id: 'confirm', message: 'Deseja realizar um ' + params.TF_OPTION +  ' na Infraestrutura?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Acao ' + params.TF_OPTION + ' Terraform', name: 'confirm'] ])
      }
    }
  }

  stage('TF Apply') {
    steps {
        sh 'terraform apply myplan.out'
    }
  }
}
}
