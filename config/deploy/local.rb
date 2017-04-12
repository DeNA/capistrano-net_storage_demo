set :deploy_to, "#{ENV['HOME']}/tmp/capistrano-net_storage_demo"
set :sshkit_backend, SSHKit::Backend::Local
server 'localhost'
