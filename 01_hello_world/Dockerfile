FROM renra/it_academy_toolbox

ENV dir /usr/src/app

RUN mkdir -p ${dir}
WORKDIR ${dir}

RUN apt-get -qy install nasm
COPY . ${dir}
