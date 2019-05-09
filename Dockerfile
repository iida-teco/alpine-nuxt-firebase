FROM iidateco/alpine-gcloud

SHELL ["/bin/bash", "-c"]

RUN \
    source ~/.bashrc && \
    yarn global add create-nuxt-app npm-check-updates && \
    yarn cache clean

ENV HOST 0.0.0.0
