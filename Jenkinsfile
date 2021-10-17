pipeline {
    agent any

    triggers {
        githubPush()
    }
    
    stages {
        stage('Fetch') {
            steps {
                sh '''
                    mvn -version
                    java -version
                    $PWD
                    ls -l
                    '''
            }
        }
    }
}
