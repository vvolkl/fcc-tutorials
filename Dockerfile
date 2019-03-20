FROM gitlab-registry.cern.ch/vavolkl/fcc-ubuntu:v0.4
RUN DEBIAN_FRONTEND=noninteractive apt install -y hep-heppy hep-fcchhanalyses; \
    rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true;
USER fccuser
