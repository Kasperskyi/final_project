pipeline {
    agent any
    tools {
        maven "maven-3.6.3"
    }
    stages {
        stage("git") {
            steps{
                git branch: 'main', credentialsId: 'aa8a3e34-164f-4450-9d96-d3f847d1a154', url: 'git@github.com:Kasperskyi/final_project.git'
            }
        }        
        stage("build code") {
            steps{
                sh "mvn clean package"
            }
        }        
        stage("Build docker image") {
            steps{
                sh "pwd"
                sh "ls -l"
                sh "sudo chmod +x webapp.war"
                sh "docker build . -t nkasperskyi/webapp:v1.0"
            }
        }
    }
}
