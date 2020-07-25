namespace :sidekiq do
  task :quiet do
    on roles(:app) do
      puts capture("pgrep -f 'sidekiq' | xargs kill -USR1")
    end
  end
  task :restart do
    on roles(:app) do
      execute :sudo, :systemctl, :restart, "sidekiq.service"
    end
  end
  task :stop do
    on roles(:app) do
      execute :sudo, :systemctl, :stop, "sidekiq.service"
    end
  end
end
