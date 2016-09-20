.PHONY: all baseimage api

all: baseimage api

baseimage:
	docker build -t "final-ci/base-image:latest" base-image

api: baseimage
	docker build -t "final-ci/final-api:latest" final-api
