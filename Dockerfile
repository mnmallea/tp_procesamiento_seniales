FROM continuumio/miniconda3
WORKDIR /app
COPY environment.yml .
RUN conda init bash
RUN conda env create -f environment.yml
ENV PATH /opt/conda/envs/env/bin:$PATH
