namespace :rename do
  desc "Rename application"
  task :to, [:app_name] do |task, args|
    prev_app_name = Rails.application.class.module_parent.name
    app_name = args[:app_name]
    system "sed -i -backup 's/#{prev_app_name.underscore}/#{app_name.underscore}/g' config/database.yml.example"
    system "sed -i -backup 's/#{prev_app_name.underscore}/#{app_name.underscore}/g' package.json"
    system "sed -i -backup 's/#{prev_app_name.underscore}/#{app_name.underscore}/g' config/cable.yml"
    system "sed -i -backup 's/#{prev_app_name.underscore}/#{app_name.underscore}/g' config/environments/production.rb"
    system "sed -i -backup 's/#{prev_app_name.camelize}/#{app_name.camelize}/g' config/application.rb"
    system "sed -i -backup 's/#{prev_app_name.camelize}/#{app_name.camelize}/g' views/layouts/application.html.erb"

    system "cp config/database.yml.example config/database.yml"

    system "rm -rf config/database.yml.example-backup"
    system "rm -rf package.json-backup"
    system "rm -rf config/cable.yml-backup"
    system "rm -rf config/environments/production.rb-backup"
    system "rm -rf config/application.rb-backup"
    system "rm -rf views/layouts/application.html.erb-backup"
  end
end
