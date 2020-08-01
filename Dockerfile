FROM debian:10.1

LABEL "version"="0.0.1"
LABEL "com.github.actions.name"="Wendix Widget MPK Release Publisher"
LABEL "com.github.actions.description"="Release Mendix Widget mpk on Github"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/Yogendra0Sharma/mendix-widget-release-action"
LABEL "maintainer"="Yogendra0Sharma"

RUN apt update \
	&& apt -y upgrade \
	&& apt install -y hub \
	&& apt autoremove \
	&& apt autoclean \
	&& apt clean

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
