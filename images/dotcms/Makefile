image_name := lucidmachine/dotcms:latest


clean: clean-containers clean-image

clean-containers:
	for container_id in $$(docker container ls --all --quiet --filter 'ancestor=$(image_name)'); do \
		docker container rm $${container_id}; \
	done

clean-image:
	docker image rm $(image_name)

install:
	docker image build --tag $(image_name) .

run:
	docker run --interactive --tty $(image_name)

.PHONY: clean clean-containers clean-image install run
