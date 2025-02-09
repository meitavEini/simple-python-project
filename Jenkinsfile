#!/usr/bin/env groovy
pipeline{
    agent {any}
    stages{
        stage('Check Python Innstallation') {
          steps {
            sh "python3 --version || echo 'Python is NOT installed!'"
        }
    }
        stage('run python file') {
            steps {
                sh "python3 newfile.py"
            }    
        }
    }
}
