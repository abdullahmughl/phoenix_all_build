FROM ubuntu:18.04

COPY . .

RUN apt-get update &&\
    apt-get install -y wget &&\
    apt-get install -y curl &&\
    apt-get install -y gnupg2 &&\
    rm -rf /var/lib/apt/lists/* 

RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb &&\
    dpkg -i erlang-solutions_2.0_all.deb || true

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
    apt-get install -y esl-erlang &&\
    apt-get install -y elixir

RUN mix local.hex --force &&\
    mix archive.install hex phx_new 1.5.9 --force

RUN apt-get update &&\
    apt-get install -y nodejs &&\
    apt-get install -y npm

RUN apt-get update &&\
    apt-get install -y postgresql-client &&\
    apt-get install -y postgresql postgresql-contrib &&\
    apt-get install -y inotify-tools

RUN apt-get update &&\
    apt-get install python3 -y

RUN apt-get update
