# Setup and Running the Solution

To set up and run the solution:

1. Clone this repository to your local machine.
2. Navigate to the project directory.
3. Run docker build
   > `docker-compose build`
4. Create the database
   > `docker-compose run web bundle exec rake db:create`
5. Execute migrations
   > `docker-compose run web bundle exec rake db:migrate`
6. After the procces, run
   > `docker-compose up`
7. visit http://localhost:3000 to ensure the rails app is working

### Some docker basic commands

- How to login into the shell
  > `docker-compose run web bash`
- How to login into the ruby console
  > `docker-compose run web bundle exec rails c`
- How to run an independant instance of sidekiq
  > `docker-compose run worker bundle exec sidekiq -e development -C config/sidekiq.yml`
- How to runt the rspec suite tests
  > `docker-compose run web bundle exec rspec`
- How to run services from the console
  > `docker-compose run web bundle exec rails c`

### Sidekiq

Visit [http://localhost:3000/sidekiq](http://localhost:3000/sidekiq) to run the worker jobs.

** Fix Possible problems with database permissions **

- docker-compose exec db bash
- mysql -u root -p
- Insert the root password

> `GRANT ALL PRIVILEGES ON development.* TO 'the_user'@'%';` > `GRANT ALL PRIVILEGES ON test.* TO 'the_user'@'%';` > `FLUSH PRIVILEGES;`

## Have a great day!

- Adán González
- adangrx@gmail.com
