FROM ubuntu:20.04

RUN apt update && apt -y upgrade && apt-get update 
RUN useradd aki && mkdir /home/aki
RUN apt install -y default-jdk

WORKDIR /home/aki
CMD ["bash"]