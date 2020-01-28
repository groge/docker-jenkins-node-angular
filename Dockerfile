FROM acrisliu/jenkins-nodejs:lts
#FROM acrisliu/jenkins-nodejs:latest
LABEL maintainer="groge <groge.choi@gmail.com>"
MAINTAINER groge "<groge.choi@gmail.com>"

# Switch to root user
USER root
RUN npm version && npm install -g @angular/cli@8.3.23

# Switch to jenkins user
USER jenkins
