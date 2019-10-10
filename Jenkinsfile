pipeline {
    agent any
    environment {
        CHANNEL = credentials('channel')
        SECRET  = credentials('secret')
        TOKEN   = credentials('token')
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
                     sh curl -X POST 'https://hooks.slack.com/services/$CHANNEL/$SECRET/$TOKEN' -H 'content-type: application/json' -d '{"text": "From Jenkins :grin:"}'
                   }
         }
    }
}
