FROM       node:5

ENV PROJECT_NAME atom-ui
ENV GIT_URL INSERT_GIT_REPO_URL_HERE

RUN useradd -m -s /bin/bash travis
RUN chown -R travis:travis /home/travis
RUN echo 'travis ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN apt-get update && apt-get install git -y

RUN git config --global url."https://".insteadof git://

USER travis

RUN git clone --config http.sslVerify=false $GIT_URL ~/$PROJECT_NAME

RUN cd ~/$PROJECT_NAME;npm i

CMD [ "/bin/bash", "-lc", "cd ~/$PROJECT_NAME; ./node_modules/.bin/gulp -p" ]
