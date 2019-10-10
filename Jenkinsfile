pipeline {
  agent any
  stages {
    stage('run-script') {
      steps {
        fileExists 'bash-example/script.sh'
      }
    }
  }
}