pipeline {
  agent any
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            build 'npm install '
          }
        }

        stage('error') {
          steps {
            build 'npm run build'
          }
        }

      }
    }

    stage('Test') {
      steps {
        junit 'test'
      }
    }

  }
}