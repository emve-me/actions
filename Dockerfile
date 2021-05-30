FROM jupyter/scipy-notebook

RUN conda install -c defaults -c pytorch -c huggingface  --quiet --yes \
    transformers papermill pytorch

# GitHub actions require the user be root in order to write to the file system
USER root

CMD jupyter lab --no-browser --allow-root