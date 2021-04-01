# README
Initial Setup for Project Purple Cow

1. You must have Docker installed on your machine
  * Get it here: https://www.docker.com/
  * Make sure that you have Docker running before proceeding
3. Clone the repo
4. Navigate to the `project-purple-cow` directory
5. Build your docker containers: `docker-compose build`
6. Set up the database
  * `docker-compose run app-rails rails db:setup`
  * `docker-compose run app-rails rails db:migrate`
7. Now, you should be able to run your containers with `docker-compose up`


Day to Day Development with Docker
1. Running Docker containers: `docker-compose up`
2. Shutting down the containers: `docker-compose down`
