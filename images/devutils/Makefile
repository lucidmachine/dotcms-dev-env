image_name := lucidmachine/devutils-dotcms:latest
username := $(shell whoami)


clean: clean-containers clean-image

clean-containers:
	for container_id in $$(docker container ls --all --quiet --filter 'ancestor=$(image_name)'); do \
		docker container rm $${container_id}; \
	done

clean-image:
	docker image rm $(image_name)

install:
	docker image build --build-arg 'username=$(username)' --tag $(image_name) .

run:
	docker run --interactive --tty $(image_name)

.PHONY: clean clean-containers clean-image install run
