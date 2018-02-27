#!/bin/bash

clear;

echo "[DOC-API] Iniciando ..."

docker run --name simple-tickets-docs-api \
          -v ${PWD}/docs/api:/home/docs \
          -w /home/docs \
          --rm -it node bash -c \
          "if [ ! -d \"node_modules\" ]; then  echo \"[DOC-API] Instalando dependencias ...\"; npm install; fi && \
          if [ -e \"index.html\" ]; then  echo \"[DOC-API] Excluindo antiga documentacao ...\"; rm -rf index.html; fi && \
          echo '[DOC-API] Gerando documentacao ...' && \
          ./node_modules/.bin/aglio -i api.apib --theme-full-width --no-theme-condense -o index.html && \
          echo '[DOC-API] Documentacao gerada ....' "
