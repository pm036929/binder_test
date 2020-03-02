FROM jupyter/minimal-notebook:latest

USER root

#RUN apt-get update \
# && apt-get -y install --no-install-recommends gnupg git vim less \
# && rm -rf /var/lib/apt/lists/*

COPY . ${HOME}/
RUN pip install numpy \
 && pip install jupyterlab \
 && pip install casadi\
 && pip install scipy\
 && pip install matplotlib\
 && pip install pandas\
 && chown -R ${NB_UID} ${HOME}

USER ${NB_USER}
WORKDIR ${HOME}
CMD ["jupyter", "lab"]
