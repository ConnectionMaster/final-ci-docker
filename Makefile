.PHONY: all baseimage api atomui

all: baseimage api

atomui:
	docker build -t "final-ci/atom-ui:latest" atom-ui

baseimage:
	docker build -t "final-ci/base-image:latest" base-image

api: baseimage
	docker build -t "final-ci/final-api:latest" final-api
