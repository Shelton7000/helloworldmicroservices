node {
    def app

    stage('Clone repository') {
        

         git url: https://github.com/Shelton7000/helloworldmicroservices.git
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("helloworldmicroservices/helloworldwebmicroservice/Dockerfile")
    }
}