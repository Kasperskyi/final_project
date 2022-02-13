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
                sh "docker build . -t nkasperskyi/webapp:v1.$BUILD_ID"
            }
        }
        stage("Build push to Dockerhub") {
            steps{
                withCredentials([string(credentialsId: 'docker-hub', variable: 'DockerHubPwd')]) {
                    sh "docker login -u nkasperskyi -p ${DockerHubPwd}"
                    }
                sh "docker push nkasperskyi/webapp:v1.$BUILD_ID"
            }
        }
        stage("Deploy to Webserver") {
            steps{
                ansiblePlaybook credentialsId: 'Jenkins-master', disableHostKeyChecking: true, extras: 'v1.${BUILD_ID}', installation: 'ansible', inventory: 'dev.inv', playbook: 'deploy-docker.yml'
            }
        }
        
    }
}
