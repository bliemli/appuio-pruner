FROM registry.access.redhat.com/rhel7:latest

LABEL io.k8s.display-name="APPUiO Pruner" \
      io.k8s.description="The APPUiO Pruner prunes old builds, deployments and images."

COPY oc /usr/local/bin/
RUN chmod 755 /usr/local/bin/oc

ENV HOME /tmp/

COPY pruner.sh /tmp/

ENTRYPOINT ["/tmp/pruner.sh"]
