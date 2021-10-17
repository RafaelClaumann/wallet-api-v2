pipeline {
    agent any

    triggers {
        githubPush()
    }
    
    stages {
        stage('Fetch') {
            steps {
                sh '''
                    $PWD
                    ls -l
                    '''
            }
        }
    }
}
