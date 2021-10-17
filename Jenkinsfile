pipeline {
    agent any

    triggers {
        githubPush()
    }
    
    stages {
        stage('Fetch') {
            steps {
                sh '''
                    chmod +x -R ${env.WORKSPACE}
                    $PWD
                    ls -l
                    '''
            }
        }
    }
}
