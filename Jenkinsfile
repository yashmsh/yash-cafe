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

        stage('') {
          steps {
            build 'npm run build'
          }
        }

      }
    }

  }
}