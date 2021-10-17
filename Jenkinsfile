pipeline {
    agent any
    
    triggers {
        githubPush()
    }
    
    stages {
        stage('Fetch') {
            steps {
                sh "java -version"
                sh "echo $PWD"
            }
        }
    }
}
