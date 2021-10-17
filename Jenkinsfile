pipeline {
    agent any
    
    tools {
        maven "maven-3.8"
    }
    
    triggers {
        githubPush()
    }
    
    stages {
        stage('RUn') {
            steps {
                sh "mvn -Dmaven.test.failure.ignore=true clean package"
                sh "java -jar "
                sh "echo $PWD"
            }
        }
    }
}
