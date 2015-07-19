namespace :nginx do
  desc "Reloads nginx"
  task :reload do
    on roles fetch(:nginx_roles) do
      execute fetch(:nginx_base_command), 'reload'
    end
  end

  before 'deploy:updated', 'nginx:reload'
end

namespace :load do
  task :defaults do
    set :nginx_base_command, 'service nginx'
    set :nginx_roles, :all
  end
end
