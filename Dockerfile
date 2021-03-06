FROM openjdk:11

RUN apt update -y && \ 
    apt install maven -y

RUN echo "PS1='\n\[\e[32m\]\u \[\e[33m\]in \w\[\e[0m\] \n> '" >> ~/.bashrc
ENTRYPOINT [ "bash" ]

WORKDIR /usr/src