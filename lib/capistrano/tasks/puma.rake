namespace :puma do
  task :status do
    on roles(:app) do
      execute :sudo, :systemctl, :status, "puma.service"
    end
  end
  task :start do
    on roles(:app) do
      execute :sudo, :systemctl, :start, "puma.service"
    end
  end
  task :stop do
    on roles(:app) do
      execute :sudo, :systemctl, :stop, "puma.service"
    end
  end
  task :restart do
    on roles(:app) do
      execute :sudo, :systemctl, :restart, "puma.service"
    end
  end
  task :reload do
    on roles(:app) do
      execute :sudo, :systemctl, :reload, "puma.service"
    end
  end
end
