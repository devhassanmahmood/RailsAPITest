### Prerequisites
What things you need to install the software and how to install them.
#### Ruby
Ruby version for this project is ` 2.6.5`.
rbenv is our recommened and preffered ruby version management software. If you don't have rbenv installed on your system. You can see the installation instructions [here.](https://github.com/rbenv/rbenv)
For installing the ruby version, type in the following command on your terminal ```rbenv install 2.6.5```.
One can check the installed ruby version by the following command ```ruby -v```.
The output should be something like this ``ruby 2.6.5p114``.
#### Rails
Rails version for this project is ` 6.0.3`.
#### Postgres
Our preferred database managing software is Postgres. If not installed, one can look into their official documentation [here](https://www.postgresql.org/download) and follow the steps as given.
#### Yarn
Make sure you have yarn installed on your system. If you haven't, just refer to this [how to install.](https://classic.yarnpkg.com/en/docs/install/#debian-stable "how to install")

#### Project Dependencies
To setup the project, follow the below commands in the project directory:
```
gem install bundler
bundle install
```
#### Create and setup the database
Edit the database configuration file `database.yml` as required then run the following commands to create and setup the database.
```
bundle exec rake db:create
bundle exec rake db:setup
```

#### Starting the rails application
You can start the rails server using the command given below:
```
rails s
```
And now you can visit the site with the URL http://localhost:3000 .
