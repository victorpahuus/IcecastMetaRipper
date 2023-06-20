@echo off
 
:loop
curl http://<ICECAST-STREAM-URL>/status-json.xsl -o "response.json"
 
jq-win64.exe -r ".icestats.source.title" response.json > icecast_meta_title.txt
 
timeout /t 30 >nul
goto loop
 
