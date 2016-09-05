FROM       final-ci/base-image:latest

ENV PROJECT_NAME final-api
ENV GIT_URL https://github.com/AVGTechnologies/final-api.git

USER travis

RUN sudo apt-get update && \
  sudo apt-get install -y postgresql-client smbclient

ENV PORT 55555
EXPOSE $PORT

RUN [ "/bin/bash", "-lc", "/home/travis/prepare_service" ]

CMD [ "/bin/bash", "-lc", "/home/travis/start" ]
