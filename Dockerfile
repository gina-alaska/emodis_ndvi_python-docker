FROM ubuntu:16.04
MAINTAINER dayne@alaska.edu

RUN  apt-get -q update && \
  apt-get -qy dist-upgrade 
RUN apt-get install -qy git \
  curl \
  git \
  python \
  python-pip \
  python-gdal 

RUN mkdir /code/
RUN git clone https://github.com/gina-alaska/emodis_ndvi_python.git /code/emodis_ndvi_python
RUN cd /code/emodis_ndvi_python

ENV EXAMPLE foo

# build info
RUN echo "Timestamp:" `date --utc` | tee /image-build-info.txt
ADD ./hello.sh /hello.sh
RUN chmod u+x /hello.sh
CMD ["./hello.sh"]
