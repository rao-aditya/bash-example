pipeline {
    agent any
    environment {
        CHANNEL = credentials('1-channel')
        SECRET  = credentials('2-secret')
        TOKEN   = credentials('3-token')
    }
    stages {
        stage('Run Script') {
            steps {
                     sh 'chmod +x script.sh'
                     sh './script.sh'
                   }
         }
        stage('Notify Slack') {
            steps {
                     sh '. notify.sh' 
                  }
         }
    }
}
