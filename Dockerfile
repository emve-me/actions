FROM jupyter/scipy-notebook

RUN conda install --quiet --yes \
    papermill

WORKDIR /app

CMD jupyter lab