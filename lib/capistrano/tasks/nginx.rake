namespace :nginx do
  desc "Reloads nginx"
  task :reload do
    on roles fetch(:nginx_roles) do
      execute fetch(:nginx_reload_command)
    end
  end

  after 'deploy:updated', 'nginx:reload'
end

namespace :load do
  task :defaults do
    set :nginx_reload_command, '/etc/init.d/nginx reload'
    set :nginx_roles, :all
  end
end
