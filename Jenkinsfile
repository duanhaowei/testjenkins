pipeline {
    agent { 
    docker 
	    { 
	    	image 'maven:3.6.0-jdk-11' 
	    	args '-v /root/.m2:/root/.m2 -v /usr/bin/docker:/usr/bin/docker -v /var/run/docker.sock:/var/run/docker.sock' 
	    } 
    }
    stages {
        stage('build') {
            steps {
                sh 'mvn clean package -Dmaven.test.skip=true'
            }
        }
        stage('Building image') {
		    steps{
		      script {
		        newImage = docker.build("$JOB_BASE_NAME:$BUILD_NUMBER")
		      }
		    }
		}
		stage('push image') {
		    steps{
		      script {
                newImage.push("${env.BUILD_NUMBER}")
            	newImage.push("latest")
		      }
		    }
		}
    }
}
