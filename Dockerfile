FROM ubuntu:zesty

RUN apt-get update --yes
RUN apt-get upgrade --yes
RUN apt-get install libsctp1 socat libwxbase3.0-0v5 libwxgtk3.0-0v5 logrotate --yes

ADD esl-erlang_19.3-1~ubuntu~zesty_amd64.deb /
ADD rabbitmq-server_3.6.12-1_all.deb         /
ADD enabled_plugins                          /etc/rabbitmq/

RUN dpkg -i /esl-erlang_19.3-1~ubuntu~zesty_amd64.deb
RUN dpkg -i /rabbitmq-server_3.6.12-1_all.deb
RUN apt --fix-broken install
CMD ["rabbitmq-server"]
