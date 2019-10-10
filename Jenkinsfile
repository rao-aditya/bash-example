pipeline {
    agent any
    stages {
        stage('Run Script') {
            steps {
                     sh 'chmod +x script.sh'
                     sh './script.sh'
                   }
            }
    }
    post {
    success {
        slackSend channel: '#exploring',
                  color: 'good',
                  message: "The pipeline ${currentBuild.fullDisplayName} completed successfully."
             }
    failure {
        slackSend channel: '#exploring',
                  color: 'bad',
                  message: "The pipeline ${currentBuild.fullDisplayName} failed."
             }    
    }
}
