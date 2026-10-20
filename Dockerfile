# Minimal Docker image for SEPP using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install SEPP
RUN micromamba create -y -n sepp -c conda-forge -c bioconda sepp==4.5.6 && \
    micromamba clean --all --yes
ENV ENV_NAME=sepp
