This is a sample app for the [_Rails 5.2 Credentials and Kubernetes_ post](http://kirshatrov.com/2018/03/24/rails-credentials-kubernetes/).

The interesting parts are:

* `app/controllers/helloworld_controller.rb` renders decrypted secrets as HTML
* `Dockerfile` build minimalistic Docker image with the app
* `.dockerignore` tells Docker to ignore `config/master.key`
* `script/release` is a script for building and pushing Docker image
* `config/deployment.yml` is Kubernetes Deployment spec that uses Kubernetes secret management

That's it!
