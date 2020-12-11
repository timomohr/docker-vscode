#Standard Visual Studio code IDE image without any extensions in a docker container
#	NOTE: tested with Docker Desktop (Windows 10) and VcXsrv X Server
 
FROM debian:bullseye-slim
LABEL version=v0.01
LABEL maintainer "https://github.com/timomohr"

#install deps for visual studio code installation
RUN apt-get update
RUN apt-get -y install wget sudo gpg apt-transport-https

#Add vscode to the repo
RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
RUN sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
RUN sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

#Install vscode
RUN sudo apt-get update
RUN sudo apt-get -y install \
	code \
	git \
	libx11-xcb1 \
	libxcb-dri3-0 \
	libdrm2 \
	libgbm1 \
	libasound2 \
	libxtst6 \
	curl \
	--no-install-recommends

#create user developer
ENV HOME /home/developer
RUN useradd --create-home --home-dir $HOME developer \
	&& chown -R developer:developer $HOME

WORKDIR $HOME

CMD bash