FROM continuumio/anaconda3:2024.06-1

COPY env_specification/BARTpredict_cpu.yml /tmp
RUN conda env update -f /tmp/BARTpredict_cpu.yml

RUN conda install unzip

WORKDIR /opt
RUN git clone --single-branch --branch galaxy https://github.com/ljocha/gc-ms_bart spectrum
