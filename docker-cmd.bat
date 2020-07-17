echo @off

docker run \
REM  -e "NODE_ENV=PROD" \
  -e "NODE_ENV=DEV" \
  -m "300M" --memory-swap "1G" \
  -w "/home/node/app" \
  --name "nodetry" \
  node
