pipeline {
    agent any
    tools {
        maven "maven-3.6.6"
    }
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
                sh "sudo apt-get install maven -y"
            }
        }
        stage("build code") {
            steps{
                sh "mvn clean install"
            }
        }
        stage("Check docker") {
            steps{
                sh "sudo apt-get install docker -y"
            }
        }
        stage("Check docker") {
            steps{
                sh "sudo apt-get install docker -y"
            }
        }
        stage("Build docker image") {
            steps{
                sh "sudo apt-get install docker -y"
            }
        }
    }
}
