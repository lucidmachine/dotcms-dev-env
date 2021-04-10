name = dotcms-dev-env


clean-volumes:
	for volume in $$(docker volume ls | grep '$(name)' | rev | cut -d' ' -f1 | rev); do \
		docker volume rm $$volume; \
	done

clean: clean-volumes

start:
	if [[ "$$(systemctl is-active docker.service)" != "active" ]]; then \
		sudo systemctl start docker.service; \
	fi
	docker-compose up --detach

stop:
	docker-compose down

restart: stop start

rebuild: stop clean start


.PHONY: clean clean-volumes start stop
