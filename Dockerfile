FROM jupyter/scipy-notebook

RUN conda install --quiet --yes \
    papermill

USER root