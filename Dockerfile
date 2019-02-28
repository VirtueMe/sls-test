FROM node:8.15-stretch

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y default-jre

RUN npm install -g serverless mocha babel-cli

LABEL version="1.0.0"
LABEL repository="http://github.com/VirtueMe/sls-test"
LABEL homepage="http://github.com/VirtueMe/sls-test"
LABEL maintainer="Benny Thomas <benny.thomas+actions@speilbildet.com>"

LABEL com.github.actions.name="GitHub Action for serverless offline testing"
LABEL com.github.actions.description="Wraps the npm cli to enable serverless offline testing."
LABEL com.github.actions.icon="menu"
LABEL com.github.actions.color="red"
COPY LICENSE README.md /

RUN node --version

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
