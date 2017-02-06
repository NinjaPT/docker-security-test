FROM jmccann/drone-chefdk:1.1.16

RUN gem install cucumber serverspec docker-api --no-ri --no-rdoc --no-document

RUN mkdir -p /dockerdir

WORKDIR /dockerdir

ADD Rakefile /dockerdir
ADD features/ /dockerdir/features