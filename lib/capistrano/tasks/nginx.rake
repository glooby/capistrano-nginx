namespace :nginx do
  desc "Reloads nginx"
  task :reload do
    on roles fetch(:nginx_reload_roles) do
      execute fetch(:nginx_reload_command)
    end
  end

  desc "Restarts nginx"
  task :restart do
    on roles fetch(:nginx_restart_roles) do
      execute fetch(:nginx_restart_command)
    end
  end
end

namespace :load do
  task :defaults do
    set :nginx_reload_roles, :all
    set :nginx_reload_command, '/etc/init.d/nginx reload'
    set :nginx_restart_roles, :all
    set :nginx_restart_command, '/etc/init.d/nginx restart'
  end
end
