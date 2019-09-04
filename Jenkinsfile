pipeline{
  agent any
  stages{
    stage("Build Docker image"){
      steps{
        sh 'docker build -t bmdivakar/demo-java1:1.0
      }
    }
    stage{
      agent{
        docker{
          image "bmdivakar/demo-java1:1.0"
          args "-p 8080:8080"
        }
      }
      stage("Build"){
        steps{
          sh '''
          mvn clean package
          copy ./target/demo.war /usr/local/tomcat/webapps/demo.war
          /usr/local/tomcat/bin/catalina.sh start
          '''
        }
      }
      stage("Test"){
        steps{
          input message:"Test the page and click proceed to continue"
        }
      }
    }
  }
}
