# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'capistrano-net_storage-demo'
set :repo_url, 'git@github.com:DeNADev/capistrano-net_storage_demo.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/#{fetch(:application)}"

# For capistrano-net_storage
require 'capistrano/net_storage_demo/direct_upload'
set :scm, :net_storage
set :net_storage_transport, Capistrano::NetStorage::S3::Transport
set :net_storage_config_files, ["#{Dir.pwd}/example/config/app.yml"]
set :net_storage_with_bundle, true
# set :net_storage_archiver, Capistrano::NetStorage::Archiver::TarGzip

set :net_storage_s3_bucket, 'example-bucket'
set :net_storage_s3_archives_directory, fetch(:application)

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
