pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        build(waitForStart: true, job: 'npm')
      }
    }

  }
}