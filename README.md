# Affility Recruitement test

## Assumptions

* Ruby 2.1.x is installed, see `.ruby-version`

  > tip : install chruby, ruby-install and pick the according version
  
  > tip 2 : you need bundle
* Vagrant 1.6.x is installed

  > tip : don't trust distro sources, download from site
* Your main public key is authorized to clone/pull your project Repo

## Installation and usage

```
git clone https://github.com/Peanutz/affility-tr
cd affility-tr
bundle install --binstubs
vagrant up
bundle exec cap staging deploy
vagrant ssh
```

## Todos

* change the config/deploy/deploy.rb to put your repo url and branch.
* nginx configuration
* php-fpm configuration
* code your app, obvioulsy

## Troubleshooting

* is your ssh key authorized on github ? did you load the identity (ssh-add) ?
* nginx is not started uh-oh
* the web is backbound to the 8080 port of your localhost. Once nginx is configured and started you should see something here http://127.0.0.1:8080
