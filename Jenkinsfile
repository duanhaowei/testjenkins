pipeline {
    agent { 
    docker 
	    { 
	    	image 'maven:3.6.0-jdk-8' 
	    	args '-v /root/.m2:/root/.m2  -v /var/run/docker.sock:/var/run/docker.sock' 
	    } 
    }
    stages {
        stage('build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Building image') {
		    steps{
		      script {
		        docker.build  "testjks:$BUILD_NUMBER"
		      }
		    }
		}
    }
}
