pipeline {
    agent any
    environment {
        PATH = "/usr/bin/:$PATH"
    }
    stages {
        stage("git") {
            steps{
                git branch: 'main', credentialsId: 'aa8a3e34-164f-4450-9d96-d3f847d1a154', url: 'git@github.com:Kasperskyi/final_project.git'
            }
        }
        stage("build code") {
            steps{
                sh "sh mvn clean install"
            }
        }
    }
}
