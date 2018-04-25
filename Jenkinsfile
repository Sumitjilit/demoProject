pipeline {
  agent any
  stages {
    stage('Preparation') {
      steps {
        echo 'Code is fetched from the repo.'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package'
        echo 'Code is compiled and jar file is created.'
      }
    }
    stage('Test') {
      steps {
        echo 'Test will be done here.'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deployment will be done here.'
      }
    }
  }
  environment {
    JAVA_HOME = '/usr/lib/jvm/jdk1.8.0_05'
    MAVEN_HOME = '/usr/local/apache-maven'
  }
}