FROM n8nio/n8n:latest

USER root

RUN npm install -g docxtemplater pizzip

ENV NODE_PATH=/usr/local/lib/node_modules
ENV NODE_FUNCTION_ALLOW_EXTERNAL=xlsx,docxtemplater,pizzip

USER node
