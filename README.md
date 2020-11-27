# docker-vscode
Standard Visual Code IDE image without any extensions in a docker container

## Purpose
This image offers the Visual Code IDE without having to install it on your Windows host machine. Just execute a run Docker command and run the ```start.bat``` to start the Visual Code container.<br>

My motivation behind this is to keep my host system clean for each project I am working on. In addition, I keep all Visual Code extensions on my host (for now) and bind the extension directory via  ```-v C:\Users\<WindowsUser>\vscode-extensions>:/home/vscode-extensions``` in the Docker run command (see <b>How?</b>)

## Tested in following environment
Windows 10<br>
Docker Desktop <br> 
VcXsrv X Server <br>

## How?
Execute the following Docker run command to initiate the vscode container<br>
```docker container run -dt --env DISPLAY=[macOS]|[Windows]|[Linux] -v C:\Users\<WindowsUser>\vscode-extensions>:/home/vscode-extensions --name <container-name> <image-name>```<br>

And execute ```start.bat```

## Addresses for screen sharing
(just in case...)
```macOS: DISPLAY=docker.for.mac.host.internal:0```<br>
```Windows: DISPLAY=host.docker.internal:0```<br>
```Linux: DISPLAY=:0```
