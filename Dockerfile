FROM kurron/docker-azul-jdk-8-build:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ENV RUBYMINE_JDK /usr/lib/jvm/zulu-8-amd64

ENTRYPOINT ["/opt/RubyMine-2017.2/bin/rubymine.sh"]

USER root

ADD https://download.jetbrains.com/ruby/RubyMine-2017.2.tar.gz /opt

RUN rm -rf /opt/RubyMine-2017.2/jre64

USER powerless

