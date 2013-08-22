from ubuntu

maintainer "Bobby Wilson"

RUN apt-get update
RUN apt-get install curl -y

RUN cd /usr/local; curl http://nodejs.org/dist/v0.10.16/node-v0.10.16-linux-x64.tar.gz | tar xvz
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/node-v0.10.16-linux-x64/bin

ADD . /app

EXPOSE 8000:8000
ENV PORT 8000
CMD ["node", "/app/index.js"]
