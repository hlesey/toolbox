IMG = ghcr.io/hlesey/toolbox
TAG = 1.0

all: push

build:
	docker build --pull --build-arg IMAGE_ARG=$(IMG):$(TAG) -t $(IMG):$(TAG) .
	docker tag $(IMG):$(TAG) $(IMG):latest

push: build
	docker push $(IMG):$(TAG)
	docker push $(IMG):latest
	@echo Pushed $(IMG) with :latest and :$(TAG) tags

build-and-push:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t $(IMG):$(TAG) --push .
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t $(IMG):latest --push .

run: 
	docker run --rm -it \
	--name toolbox \
	${IMG}:${TAG} /usr/bin/bash