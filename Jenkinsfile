pipeline {
    agent any
    
    tools {
        maven "maven-3.8"
    }
    
    triggers {
        githubPush()
    }
    
    stages {
        stage('Build') {
            steps {
                sh "mvn -Dmaven.test.failure.ignore=true clean package -f  api/pom.xml"
                sh "echo $PWD"
            }
        }
    }
}
