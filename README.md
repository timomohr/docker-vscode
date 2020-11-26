# docker-vscode
Standard Visual Code IDE image without any extensions in a docker container

This image offers the Visual Code IDE without any installation needed on your Windows host machine. Just execute a run Docker command and run the "start.bat" to start the Visual Code.

# How to run
docker container run -dt --env DISPLAY=[macOS]|[Windows]|[Linux] -v C:\Users\<WindowsUser>\vscode-extensions>:/home/vscode-extensions --name <container-name> <image-name>
  
# Addresses for screen sharing
macOS: DISPLAY=docker.for.mac.host.internal:0
Windows: DISPLAY=host.docker.internal:0
Linux: DISPLAY=:0
