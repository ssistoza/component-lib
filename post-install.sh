#! /bin/bash
if [ $VSCODE_SERVER ];
then # concatenante and copy keys.
    echo "Is a cloud dev server! Linking pem files into webpack-dev-server"
    sudo cat ~/vscode/certs/privkey.pem ~/vscode/certs/cert.pem > certs/server.pem
    sleep 1
    cp -vf ./certs/server.pem ./node_modules/webpack-dev-server/ssl/server.pem
else 
    echo "Is not running on the cloud; linking not required.";
fi