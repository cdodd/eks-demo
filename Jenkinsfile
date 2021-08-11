pipeline {
    options {
        ansiColor('xterm')
        buildDiscarder(logRotator(numToKeepStr: '5'))
    }
    agent none
    stages {
        stage('Lint') {
            parallel {
                stage('Terraform') {
                    agent {
                        docker {
                            image 'hashicorp/terraform:1.0.3'
                            args '--entrypoint='
                        }
                    }
                    steps {
                        sh 'terraform fmt -recursive -check'
                    }
                }
            }
        }
    }
}
