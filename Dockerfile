from ubuntu

maintainer "Bobby Wilson"

RUN apt-get update
RUN apt-get install python-software-properties python g++ make
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install nodejs

ADD . /src

EXPOSE 8000:8000
ENV PORT=8000
CMD ["node", "index.js"]
