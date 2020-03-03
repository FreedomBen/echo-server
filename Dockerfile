FROM registry.access.redhat.com/ubi8/ruby-25

ENV VERSION 1.0.0

LABEL io.k8s.description="echo-server: a simple server that echoes back your request" \
  io.k8s.display-name="echo-server v${VERSION}" \
  io.openshift.tags="test,qa" \
  name="echo-server" \
  architecture="x86_64" \
  maintainer="github.com/FreedomBen"

COPY . /app

WORKDIR /app
USER root
RUN bundle install

USER default
EXPOSE 8080
CMD /app/app.rb
