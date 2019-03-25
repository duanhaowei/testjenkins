pipeline {
    agent { 
    docker 
	    { 
	    	image 'maven:3.6.0-jdk-8' 
	    	args '-v /root/.m2:/root/.m2 -v /usr/bin/docker:/usr/bin/docker -v /var/run/docker.sock:/var/run/docker.sock' 
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
		        newImage = docker.build("testjks:$BUILD_NUMBER")
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
