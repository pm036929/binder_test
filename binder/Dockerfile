FROM jupyter/minimal-notebook:latest

USER root

#RUN apt-get update \
# && apt-get -y install --no-install-recommends gnupg git vim less \
# && rm -rf /var/lib/apt/lists/*

COPY . ${HOME}/
RUN pip install numpy \
 && conda install "notebook>=5.3" "ipywidgets=7.5"\	
 && conda install jupyterlab \
 && conda install casadi\
 && conda install scipy\
 && conda install matplotlib\
 && chown -R ${NB_UID} ${HOME}

USER ${NB_USER}
WORKDIR ${HOME}
CMD ["jupyter", "lab"]
