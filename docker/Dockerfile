FROM condaforge/miniforge3:24.11.3-0

COPY SpecTUS_predict.yaml /tmp
RUN mamba env update -f /tmp/SpecTUS_predict.yaml

RUN mamba install unzip

WORKDIR /opt
#RUN git clone --single-branch --branch galaxy https://github.com/ljocha/gc-ms_bart spectrum
RUN git clone https://github.com/ljocha/gc-ms_bart spectus

RUN . /opt/conda/etc/profile.d/conda.sh && conda activate SpecTUS_predict && pip install Flask Flask-Limiter
