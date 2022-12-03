FROM ruby:3-slim-buster

RUN apt-get -y update && \
  apt-get -y install dumb-init entr

ENTRYPOINT ["dumb-init", "--"]

ENV dir /usr/src/app
RUN mkdir -p ${dir}
WORKDIR ${dir}

COPY src ${dir}/src
