FROM debian:jessie

RUN apt-get -qy update && \
  apt-get -qy install build-essential git git-core libcurl3 curl && \
  apt-get install -qy zlib1g-dev && \
  apt-get install -qy libssl-dev && \
  apt-get install -qy libpq-dev && \
  apt-get install -qy libreadline-dev && \
  apt-get install -qy locales locales-all && \
  rm -rf /var/lib/apt/lists/*

RUN locale-gen en_GB.UTF-8

ENV LC_ALL=en_GB.UTF-8
ENV LANG=en_GB.UTF-8
ENV LANGUAGE=en_GB.UTF-8

ARG RUBY_MAJOR=2.5
ARG RUBY_MINOR=0
ARG RUBY_VERSION=$RUBY_MAJOR.$RUBY_MINOR

RUN mkdir /ruby && \
  cd /ruby && \
  curl http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz | tar xz && \
  cd ruby-$RUBY_VERSION && \
  ./configure --with-openssl-dir=/usr --with-readline-dir=/usr --with-zlib-dir=/usr && \
  make && \
  make install && \
  cd / && \
  rm -rf /ruby

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie main" | tee /etc/apt/sources.list.d/mono-official-stable.list

ARG NODE_VERSION=8.9.4

RUN apt-get -qy update && \
  apt-get -qy install python && \
  mkdir /node && \
  cd /node && \
  curl http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz | tar xz && \
  cd node-v$NODE_VERSION && \
  ./configure && \
  make && \
  make install && \
  cd / && \
  rm -rf /node && \
  apt-get -qy autoremove

RUN apt-get -qy install default-jre && \
  apt-get -qy install default-jdk && \
  apt-get -qy install mono-devel && \
  apt-get -qy install haskell-platform && \
  apt-get -qy install nasm && \
  apt-get -qy autoremove
