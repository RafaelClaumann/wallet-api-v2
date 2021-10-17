pipeline {
    agent any

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
