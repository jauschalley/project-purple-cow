echo "starting initial build"

docker-compose build

docker-compose run app-rails rails db:setup

docker-compose run app-rails rails db:migrate