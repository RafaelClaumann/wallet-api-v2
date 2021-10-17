pipeline {
    agent any
    
    def mvnHome = tool name: 'maven-3.8', type: 'maven'
    
    triggers {
        githubPush()
    }
    
    stages {
        stage('RUn') {
            steps {
                sh "mvn compile"
                sh "java -jar "
                sh "echo $PWD"
            }
        }
    }
}
