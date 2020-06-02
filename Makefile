.PHONY: java

tag:
	bash .bin/create_tag.sh -n1

pdd:
	docker run \
	--tty \
	--interactive \
	--workdir=/main \
	--volume=${PWD}:/main \
	--rm iakunin/pdd:0.20.5 \
	pdd

codeclimate:
	codeclimate analyze
