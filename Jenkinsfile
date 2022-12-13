node {
    def app
    stage('Clone repository') {
	git branch: 'main',
	url: 'https://github.com/jhson929/todoList-Test.git'
    }
    stage('Build image') {
        app = docker.build("hoo903/todo-test")
    }
    stage('Test image') {

    }
    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
        	app.push("${env.BUILD_NUMBER}")
        	app.push("latest")
	}
    }
}
