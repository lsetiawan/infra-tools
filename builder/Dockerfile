FROM continuumio/miniconda3:4.7.10

# Install software deps
RUN apt-get update -yqq \
    && DEBIAN_FRONTEND=noninteractive apt-get install -yqq --no-install-recommends \
    software-properties-common \
    build-essential \
    git \
    wget \
    gnupg \
    && apt-get -qq clean

COPY install.sh /opt/install.sh

RUN chmod +x /opt/install.sh && /bin/bash /opt/install.sh

# Install conda packages
RUN conda config --set show_channel_urls true \
    && conda update conda --yes \
    && conda install --yes --freeze-installed \
    -c conda-forge \
    conda-build \
    tini \
    ansible \
    ansible-bender \
    && conda build purge-all \
    && find /opt/conda/ -type f,l -name '*.a' -delete \
    && find /opt/conda/ -type f,l -name '*.pyc' -delete \
    && find /opt/conda/ -type f,l -name '*.js.map' -delete \
    && rm -rf /opt/conda/pkgs
  