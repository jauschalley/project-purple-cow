# SOLUTION

Basic setup of the app can be found in README.md

As I approached the given challenge, I thought about going two ways;

1. A dockerized Rails app
2. Leveraging cloud tools

I chose a rails app because it seemed to fit slightly better for ease of setup and speed though building a simple CRUD API in the cloud is pretty simple, too.  It just depends on specific needs of the client.

I chose Rails over other server-side frameworks because it was basically invented for tasks like this.  While other frameworks have tried to mirror what Rails does best (scaffolding, generators), I still think Ruby on Rails is the most developer friendly way to prototype an application quickly.

To build the solution as quick as possible, I used the `Dockerfile`, `docker-compose.yml`, and `entrypoint.sh` that I have set aside for starting new apps that only required minimal changes.

As for the API functionality, I simply used the built-in Rails scaffolding.
`docker-compose run app-rails rails g scaffold Item name:string`

I did not write a single line of Ruby code in this solution.  Most of the work was in the containerization and creating a simple way to run the initial setup scripts(`setup.sh`).

Going through the project definition points:

Must Haves:

1. The web application is served on port 3000 and can be easily changed on line 24 of the Dockerfile.
2. The API as an /items endpoint
3. The /items endpoint as :id and :name but also carries the :createdAt and :updatedAt properties that are automatically created
4. Items are persisted in memory (I also seeded some data for initial startup)
5. There is a Dockerfile and I also included docker-compose
6. The application runs locally with `docker-compose up` but I also added a single line solution for initial setup with `bash setup.sh`
7. This is the document

Nice to Haves:

1. The Dockerfile creates a persistent database
2. Port solution is documented
3. All other CRUD operations are included in the API

Additional Follow Up Tasks

I would absolutely add Swagger documentation to this application immediately.
