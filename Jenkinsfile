pipeline{
  agent any
  stages{
    stage("Build Docker image"){
      steps{
        sh 'docker build -t bmdivakar/demo-java1:1.0 .'
      }
    }
    stage("Build and Test"){
      agent{
        docker{
          image "bmdivakar/demo-java1:1.0"
          args "-p 8080:8080"
        }
      }
      steps{
        sh '''
        export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
        mvn clean package
        cp ./target/demo.war /usr/local/tomee/webapps/demo.war
        /usr/local/tomee/bin/catalina.sh start
        '''
        input message:"Test the page and click proceed to continue"
      }
    }
  }
}
