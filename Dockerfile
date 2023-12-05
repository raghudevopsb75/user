FROM        node
RUN         mkdir /app
WORKDIR     /app
ADD         node_modules/ /app/node_modules/
ADD         server.js package.json /app/
ADD         run.sh /run.sh
ENTRYPOINT  ["bash", "/run.sh"]
RUN         curl -L -o /app/rds-combined-ca-bundle.pem https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem
