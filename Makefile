build:
	docker compose build

bash:
	docker compose run --rm -P web bash

start:
	docker compose up

attach-bash:
	docker compose exec web bash

logs:
	docker compose logs web

error-logs:
	docker compose exec web tail -f /var/log/nginx/project.local_error.log
