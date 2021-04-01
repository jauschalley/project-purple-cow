# README
Initial Setup for Project Purple Cow

1. You must have Docker installed on your machine
  * Get it here: https://www.docker.com/
  * Make sure that you have Docker running before proceeding
3. Clone the repo


4. Navigate to the `project-purple-cow` directory


6. Run the setup script: `bash setup.sh`


Day to Day Development with Docker
1. Running Docker containers: `docker-compose up`
* The application will be available on port 3000
2. Shutting down the containers: `docker-compose down`

3. To use the rails console
* containers muse be running
* in a new window, use: `docker-compose run app-rails rails c`
*  use `exit` to leave the console
