FROM line/kubectl-kustomize:1.20.2-3.9.1

COPY entrypoint.sh /bin/
RUN chmod +x /bin/entrypoint.sh

ENV SSH_KEY=
ENV IMAGES=
ENV IMAGE_TAG=
ENV MANIFEST_HOST=
ENV MANIFEST_USER=
ENV MANIFEST_REPO=
ENV MANIFEST_BRANCH=
ENV KUSTOMIZATION=

ENTRYPOINT ["/bin/entrypoint.sh"]
