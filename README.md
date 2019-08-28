# Mage Wars Online

### System Requirments
* Bundler version 2.0.2
* rbenv 1.1.2 (optional)
* ruby 2.6.3p62
* postgres (PostgreSQL) 11.5 

### Initial Set up
* bundle install --path=vendor
* bundle exec rake db:create db:migrate

### Running the Test Suite
* bundle exec guard --clear
