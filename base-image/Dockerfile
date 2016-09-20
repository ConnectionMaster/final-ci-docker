FROM       ubuntu:14.04.2

ENV DEBIAN_FRONTEND noninteractive

RUN useradd -m -s /bin/bash travis
RUN chown -R travis:travis /home/travis
RUN echo 'travis ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX && \
  locale-gen en_US.UTF-8 && \
  dpkg-reconfigure locales

RUN apt-get update && \
    apt-get install -y \
      build-essential \
      curl \
      mono-complete \
      git-core \
      libssl-dev \
      libreadline-dev \
      libyaml-dev \
      libxml2-dev \
      libxslt-dev \
      libcurl4-openssl-dev \
      libffi-dev \
      python-software-properties \
      libpq-dev \
      zlib1g-dev \
      wget

USER travis

ENV CONFIGURE_OPTS --disable-install-doc
RUN echo 'gem: --no-rdoc --no-ri' >> /home/travis/.gemrc

RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN curl -sSL https://get.rvm.io | bash -s stable --ruby=2.2.2,2.1.5,jruby-1.7.16 --gems=foreman

RUN /bin/bash -lc 'source /home/travis/.rvm/scripts/rvm ; rvm 2.1.5,2.2.2,jruby-1.7.16 do gem install bundler'

USER root

COPY "./certs/*" "/usr/local/share/ca-certificates/"

RUN [ "sudo", "update-ca-certificates" ]

COPY "./assets/*" "/home/travis/"

RUN [ "chown", "travis:travis", "/home/travis/start", "/home/travis/prepare_service" ]
