FROM ubuntu:16.04
MAINTAINER dayne@alaska.edu
RUN echo "root:Docker!" | chpasswd
RUN  apt-get -q update && \
  apt-get -qy dist-upgrade 
RUN apt-get install -qy git \
  apt-utils \
  vim \
  curl \
  wget \
  zip \
  git \
  bashdb \
  python \
  python-pip \
  python-gdal 

RUN pip install scipy

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/abc && \
    echo "abc:x:${uid}:${gid}:Abc,,,:/home/abc:/bin/bash" >> /etc/passwd && \
    echo "abc:x:${uid}:" >> /etc/group && \
    echo "abc ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/abc && \
    chmod 0440 /etc/sudoers.d/abc && \
    chown ${uid}:${gid} -R /home/abc

USER abc
ENV HOME /home/abc
WORKDIR $HOME
CMD /bin/bash




RUN mkdir /code /data /work /test
RUN mkdir /test/input /test/output /test/code /test/scratch

# # clone latest copy (master) of emodis_ndvi_python
# RUN git clone https://github.com/gina-alaska/emodis_ndvi_python.git /code/emodis_ndvi_python

# RUN cd /code/emodis_ndvi_python

# ENV HOME_EXC /code/emodis_ndvi_python

# TODO switch scripts up to using seperate input and output
# option: /data/input /data/output could be good defaults but they should 
# specified differently
#ENV HOME_DATA /data


USER abc
ENV HOME /home/abc
ADD ./hello.sh $HOME/hello.sh
WORKDIR $HOME
CMD /bin/bash


# build info
RUN echo "Timestamp:" `date --utc` | tee /image-build-info.txt
ADD ./hello.sh /hello.sh

#RUN chmod u+x /hello.sh
#CMD ["./hello.sh"]
