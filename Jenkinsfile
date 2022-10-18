pipeline{
    agent any
    // tools{
    //     maven '3.5.2'
    // }
    stages{
        stage("Build"){
            steps{
                withDockerRegistry(
                    [credentialsId:"dockerlogin", url: ""]

                ) {
                    script{ 
                        app = docker.build("kingzeasybuggy")

                    }

                }     
                
            }
        }
        stage("push"){
            steps{
                
                script{
                    docker.withRegistry("https://835163480187.dkr.ecr.us-east-1.amazonaws.com", "ecr:us-east-1:AWS
                    _credentials")
                    {
                        app.push("latest")
                    }
                }
            }
        }
    }
}