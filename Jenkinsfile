pipeline {
    agent any
    
    tools {
        maven "maven-3.8"
    }
    
    triggers {
        githubPush()
    }
    
    stages {
        stage('Maven Build') {
            steps {
                parallel (
                    checkdir: {
                        sh "echo CURRENT DIR: $PWD"
                        sh "ls -l"
                    },
                    mvnbuild: {
                        sh "mvn clean -f api/pom.xml"
                        sh "mvn -T 2C install -f api/pom.xml"                        
                    }
                )
            }
        }
        
        stage('Docker Build') {
            steps {
                sh '''#!/bin/bash
                    echo BUILDING DOCKER IMAGE
                    cd api
                    docker image build --no-cache -t java-app:1.0 .
                   '''
            }
        }
    }
}
