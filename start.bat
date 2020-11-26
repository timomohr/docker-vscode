@ECHO OFF
@ECHO Start myVscode with Visual Code IDE
docker exec -it myVscode su developer -p -c "code --extensions-dir /home/vscode-extensions"

@ECHO Done
PAUSE