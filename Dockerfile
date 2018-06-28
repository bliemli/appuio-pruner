FROM registry.access.redhat.com/rhel7-atomic

LABEL io.k8s.display-name="oc-37-rhel7" \
      io.k8s.description="Minimal rhel image providing oc"

RUN microdnf install atomic-openshift-clients --enablerepo=rhel-7-server-rpms --enablerepo=rhel-7-server-ose-3.7-rpms --nodocs && \
    microdnf update; microdnf clean all

CMD ["/usr/bin/oc help"]
