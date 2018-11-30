FROM iidateco/alpine-firebase

SHELL ["/bin/bash", "-c"]

RUN \
    source ~/.bashrc && \
    nvm use 6.11.5 && \
    yarn global add create-nuxt-app && \
    yarn cache clean

ENV HOST 0.0.0.0
