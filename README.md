# README

## SQLUA COM UA

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
#### Setup

This service can be setup by running:

`bin/setup`


#### Running Standalone

The service can be ran in standalone for development purposes by running:

`bin/rails s`


#### Lintering

This project utilizes Rubocop for linting standards. Linting can be performed with:

`bin/rubocop`

  - rubocop - ruby static code analyzer and code formatter.
  - rubocop-performance - extension for rubocop with additional rules for lintering.
  - rubocop-rails - extension for rubocop with additional rules for rails lintering.
  - traceroute - Rake task that helps find dead routes and unused actions.
  - strong_migrations - сatch unsafe migrations in development.
  - breakman - is a static analysis tool which checks Ruby on Rails applications for security vulnerabilities.
  - bundler-audit - checks gemfile.lock for vulnerable versions of gems and does not allow untrusted gems to be installed.
  - bunder-leak - tool to find leaky gems in your dependencies. Make sure memory leaks are not in your gem dependencies.
  - lefthook - hook for git push and git commit. 

* How setting leftook:
  1. Install lefthook:
    ```ruby
    $ lefthook install
    ```
  2. Test it:
    ```ruby
    $ lefthook run pre-commit
    #or
    $ lefthook run pre-push
    ```
  - Expected result after calling commands:
    
    ```ruby
    $ lefthook run pre-commit
    ...
     SUMMARY: (done in 2.35 seconds)
      ✔️  brakeman
      ✔️  rubocop
    #or
    
    $ lefthook run pre-push
    ...
    SUMMARY: (done in 1.76 seconds)
    ✔️  bundler-leak
    ✔️  bundler-audit
    ```
* How it works:
    - We have two actions `pre-commit` and `pre-push`:
    -   when you execute `git commit`, call rubocop and brakeman before doing so. 
    if rubocop and brakeman run with exceptions, your commit will not be executed.

    - when you execute `git push`, call bundler-leak and bundler-audit before doing so. 
    if bundler-leak and bundler-audit run with exceptions, your push will not be executed.

## Configure rails credentials

### How to get keys from encrypted environments
There are 4 environments with their own keys: development, test, staging and production.
1. Open rails console for necessary environment(for instance, **rails c -e production**);
2. **Rails.application.credentials.config** command - demonstation of all data from config/credentials/*.yml.enc file;
3. **Rails.application.credentials.config[:secret_key_base]** command - demonstration of environment key;

Database params from console:
* Rails.application.credentials.config[:database_name]
* Rails.application.credentials.config[:database_url]
* Rails.application.credentials.config[:database_host]
* Rails.application.credentials.config[:database_username]
* Rails.application.credentials.config[:database_password]

### How to add or update credentials

You need a text editor(VIM) for next command:
**EDITOR=vim rails credentials:edit --environment <name_of_environment>**
