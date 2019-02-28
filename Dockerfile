FROM svls/serverless:1.24.1

LABEL version="1.0.0"
LABEL repository="http://github.com/VirtueMe/sls-test"
LABEL homepage="http://github.com/VirtueMe/sls-test"
LABEL maintainer="Benny Thomas <benny.thomas+actions@speilbildet.com>"

LABEL com.github.actions.name="GitHub Action for serverless offline testing"
LABEL com.github.actions.description="Wraps the npm cli to enable serverless offline testing."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"
COPY LICENSE README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
