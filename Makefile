clean: clean-volumes

clean-volumes:
	for volume in $$(docker volume ls | grep 'dotcms-starter' | rev | cut -d' ' -f1 | rev); do \
		docker volume rm $$volume; \
	done

start:
	if [[ "$$(systemctl is-active docker.service)" != "active" ]]; then \
		sudo systemctl start docker.service; \
	fi
	docker-compose up -d

stop:
	docker-compose down


.PHONY: clean clean-volumes start stop
