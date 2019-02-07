pipeline {
    agent { node { label 'swarm-build-agent' } }

    stages {
        stage('Build') {
            steps {
                echo 'Starting a build...'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
