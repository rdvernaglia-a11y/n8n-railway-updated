FROM n8nio/n8n:latest

USER root

# Instalar deps em diretório isolado
RUN mkdir -p /opt/extra-modules && \
    cd /opt/extra-modules && \
    npm init -y && \
    npm install docxtemplater pizzip

ENV NODE_PATH=/opt/extra-modules/node_modules
ENV NODE_FUNCTION_ALLOW_EXTERNAL=xlsx,docxtemplater,pizzip

# Mantém USER root para evitar EACCES no volume Railway
# Single-tenant: hardening de non-root é dispensável
