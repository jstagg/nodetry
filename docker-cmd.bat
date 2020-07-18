echo off

docker run -e "NODE_ENV=DEV" -p 8001:8080 -m "300M" --memory-swap "1G" -d --name "nodetry" jstag/nodetry
REM docker run -e "NODE_ENV=PROD" -p 8001:8080 -m "300M" --memory-swap "1G" -d --name "nodetry" jstag/nodetry

REM -30-
