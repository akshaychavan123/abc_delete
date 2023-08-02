# config/deploy.rb

# Set your application name
set :application, 'akki'

# Set the repository URL of your Rails application
set :repo_url, 'https://github.com/akshaychavan123/abc_delete.git'

# Set the deploy path on the server
set :deploy_to, '/home/dev/Documents/projects/akki'

# Set the user for SSH login on the server
set :user, 'ubuntu'

# Set the SSH private key (path to the .pem file)
set :ssh_options, {
  keys: ["/home/dev/Desktop/ak1.pem"],
  forward_agent: false
}

# Set the roles for deployment (app, db, web)
server '13.233.127.88', user: fetch(:user), roles: %w{app db web}
