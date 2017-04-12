# capistrano-net_storage-demo

This is a demo application for [capistrano-net_storage](https://github.com/DeNADev/capistrano-net_storage).

## Prerequisites

- Ruby v2 or later
- bundler

## Usage

```bash
git clone git@github.com:DeNADev/capistrano-net_storage_demo.git
cd capistrano-net_storage_demo
bundle
bundle exec cap local deploy
```

The command `cap local deploy` deploys this application into
`${HOME}/tmp/capistrano-net_storage_demo`.  
You can add or modify `Capfile` and files under `config/deploy/` directory to see how it works.

## Branches

- [net-storage_s3](https://github.com/DeNADev/capistrano-net_storage_demo/tree/net-storage_s3) ... Demo using
[capistrano-net_storage-s3](https://github.com/DeNADev/capistrano-net_storage-s3) plugin.

## License

Available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

Copyright (c) 2017 DeNA Co., Ltd., IKEDA Kiyoshi

