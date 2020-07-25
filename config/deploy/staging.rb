set :branch, ENV["REVISION"] || ENV["BRANCH_NAME"] || :develop
server "ip_address", user: "deploy", roles: %w[app db web], primary: true
