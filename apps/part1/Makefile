SHELL = /bin/bash
IMAGE_NAME ?= azcondevbook-part1
IMAGE_TAG ?= local
export IMAGE_NAME
export IMAGE_TAG

.PHONY: test build docker-build docker-smoke-test docker-smoke-test-with-build

test:
	gradle test

build:
	gradle clean

docker-build:
	docker compose build --no-cache

docker-smoke-test:
	docker compose up --exit-code-from smoke-test

docker-smoke-test-with-build: docker-build docker-smoke-test
