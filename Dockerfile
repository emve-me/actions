FROM jupyter/scipy-notebook

RUN conda install --quiet --yes \
    papermill

# GitHub actions require the user be root in order to write to the file system
USER root