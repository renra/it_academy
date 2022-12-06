FROM rust:1.65.0-slim-buster

RUN apt-get -y update && \
  apt-get -y install dumb-init entr

ENTRYPOINT ["dumb-init", "--"]

ENV dir /usr/src/app
RUN mkdir -p ${dir}
WORKDIR ${dir}

RUN rustup component add clippy

COPY Cargo.toml ${dir}
COPY Cargo.lock ${dir}

COPY src ${dir}/src
RUN cargo build
