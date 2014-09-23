lock '3.2.1'

set :application, 'affility-test-recrutement'
# put your repo URL here 
# ex : git@github.com:Peanutz/my_super_repo.git
set :repo_url, 'git@github.com:Peanutz/my_super_repo.git'
# branch, either default or master, that's just you
set :branch, 'master'
set :use_sudo, false
set :deploy_to, "/var/www/#{fetch(:application)}"
set :ssh_options, { :forward_agent => true }
set :scm, :git
set :format, :pretty
set :log_level, :debug
set :pty, true
# You have node and grunt if you so need it
set :linked_dirs, %w{node_modules}
set :keep_releases, 12
set :grunt_flags, '--no-color'
set :npm_flags, '--silent'

after 'deploy:updated', 'grunt'
after 'deploy:updated', 'composer:install'
