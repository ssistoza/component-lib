#! /bin/bash
# this is being renamed-incorrectly WHY?
# Why adding '\r' to everything because of line endings! 
sudo cat ~/vscode/certs/privkey.pem ~/vscode/certs/cert.pem > "server.pem"
sleep 1
cp -vf ./server.pem ../node_modules/webpack-dev-server/ssl/server.pem