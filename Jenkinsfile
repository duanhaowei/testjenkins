pipeline {
    agent { 
    docker 
	    { 
	    	image 'maven:3.6.0-jdk-8' 
	    	args '-v /root/.m2:/root/.m2' 
	    } 
    }
    stages {
        stage('build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
