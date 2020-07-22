FROM ubuntu:bionic
MAINTAINER Mingwei Zhang <mingwei@caida.org>

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y install apt-transport-https \
               curl lsb-release gnupg sudo

# add wandio and caida software repositories
RUN echo "deb https://dl.bintray.com/wand/general $(lsb_release -sc) main" | tee -a /etc/apt/sources.list.d/wand.list
RUN echo "deb https://dl.bintray.com/wand/libtrace $(lsb_release -sc) main" | tee -a /etc/apt/sources.list.d/wand.list
RUN echo "deb https://dl.bintray.com/wand/libflowmanager $(lsb_release -sc) main" | tee -a /etc/apt/sources.list.d/wand.list
RUN curl --silent "https://bintray.com/user/downloadSubjectPublicKey?username=wand" | apt-key add -
RUN echo "deb https://pkg.caida.org/os/ubuntu $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/caida.list
RUN curl -so /etc/apt/trusted.gpg.d/caida.gpg https://pkg.caida.org/os/ubuntu/keyring.gpg

# install updater dependencies
RUN apt-get -y update && apt-get -y install \
    libwandio1-dev \
    libipmeta2-dev \
    python-pyipmeta \
    python-dev \
    python-swiftclient \
    python-setuptools \
    build-essential

# copy the updater code and install it to the system
WORKDIR /mddb_updater
COPY . .
RUN python setup.py install

# set the startup command to run the updater
CMD ["mddb-updater"]
