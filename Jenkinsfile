pipeline {
  agent any
  tools { 
        maven 'Maven_3_2_5'  
    }
   stages{
    stage('CompileandRunSonarAnalysis') {
            steps {	
		sh 'mvn clean verify sonar:sonar -Dsonar.projectKey=${{ secrets.SNONARPROJECTKEY }} -Dsonar.organization=${{ secrets.SNONARPROJECTKEY }} -Dsonar.host.url=https://sonarcloud.io -Dsonar.token=${{ secrets.SONARTOKEN }}'
			}
        } 
  }
}
