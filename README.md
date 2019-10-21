# README

- Ruby version
  2.3.4

- Rails version
  5.2.3

- Setup
  Clone project https://github.com/Luey-Ny0ike/kuhama.git

  cd into the directory and run:

  Bundle install

  Database creation

  Run rails db: create

  Run rails db:migrate - to run the pending migrations

  - Search deamons
    To start the sphinx search deamons first run:

  rails ts:index

  then start the pid by running

  rails ts:start

  Then finally run: rails s to start the app, Visit http://localhost:3000 to view the site
