FROM ubuntu:latest

# update package manager
RUN apt update

# Configure time zone (only necessary for Docker)
RUN ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime \
  && echo America/New_York > /etc/timezone

RUN apt install -y tzdata

# Install necessary dependencies
RUN apt install -y --no-install-recommends software-properties-common dirmngr wget

# Install the signing key
RUN wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc \
  | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc

RUN add-apt-repository -y "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

# Install R base
RUN apt install -y --no-install-recommends r-base

# command to execute at container run time
CMD ["R", "-e", "print('Hello World!')"]
