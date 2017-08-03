FROM ubuntu:16.04
MAINTAINER dayne@alaska.edu

RUN  apt-get -q update && \
  apt-get -qy dist-upgrade 
RUN apt-get install -qy curl git

ENV EXAMPLE foo


# build info
RUN echo "Timestamp:" `date --utc` | tee /image-build-info.txt
#ADD ./start.sh /start.sh
#RUN chmod u+x /start.sh
#CMD ["/start.sh"]
