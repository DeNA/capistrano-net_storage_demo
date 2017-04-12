require 'capistrano/net_storage_demo'
require 'capistrano/net_storage/transport/base'

class Capistrano::NetStorageDemo::DirectUpload < Capistrano::NetStorage::Transport::Base
  include Capistrano::NetStorage::Utils

  def check
  end

  def find_uploaded
  end

  def upload
    c = config
    if fetch(:upload_by_rsync)
      c.servers.each do |host|
        ssh = build_ssh_command(host)
        on :local do
          execute :rsync, "-avz --rsh='#{ssh}'", c.local_archive_path, "#{host}:#{c.archive_path}"
        end
      end
    else
      on c.servers do
        upload! c.local_archive_path, c.archive_path
      end
    end
  end

  def download
  end

  private

  def build_ssh_command(host)
    user_opt = ''
    key_opt  = ''
    port_opt = ''

    if user = host.user
      user_opt = " -l #{user}"
    end

    if keys = host.keys
      keys    = keys.is_a?(Array) ? keys : [keys]
      key_opt = keys.map { |key| " -i #{key}" }.join('')
    end

    if port = host.port
      port_opt = " -p #{port}"
    end

    "ssh#{user_opt}#{key_opt}#{port_opt}"
  end
end
