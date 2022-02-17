FROM registry.redhat.io/openshift4/ose-jenkins-agent-maven:latest
USER root

RUN curl -fsSL -o /tmp/get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && chmod 700 /tmp/get_helm.sh && cd /tmp/ && ./get_helm.sh  && rm -Rf /tmp/*
RUN helm version

USER 1001