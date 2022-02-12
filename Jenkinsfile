pipeline {
    agent {label "Node 1"}
    environment {
        PATH = "/usr/bin/:$PATH"
    }
    stages {
        stage("git") {
            steps{
                git branch: 'main', credentialsId: 'aa8a3e34-164f-4450-9d96-d3f847d1a154', url: 'git@github.com:Kasperskyi/final_project.git'
            }
        }
        stage("Check mvn") {
            steps{
                sh "apt-get install maven"
            }
        }
        stage("build code") {
            steps{
                sh "mvn clean install"
            }
        }
    }
}
