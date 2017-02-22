FROM exorath/serverarchitect

ARG AWS_ACCESS_KEY_ID		
ENV AWS_ACCESS_KEY_ID ${AWS_ACCESS_KEY_ID}		
ARG AWS_SECRET_KEY		
ENV AWS_SECRET_KEY ${AWS_SECRET_KEY}		
ARG AWS_REGION		
ENV AWS_REGION ${AWS_REGION}
ARG GITHUB_OAUTH		
ENV GITHUB_OAUTH ${GITHUB_OAUTH}
ARG EULA

COPY . /usr/src/mcserver
WORKDIR /usr/src/mcserver
RUN ["curl", "http://127.0.0.1:8080/"]
RUN ["curl", "http://$host:8080/", "|| :"]
RUN ["curl", "http://0.0.0.0:8080/", "|| :"]
RUN ["curl", "http://172.17.0.0:8080/"]
RUN serverarchitect
