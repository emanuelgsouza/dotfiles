FROM continuumio/anaconda3

RUN pip install --upgrade pip

RUN pip install psycopg2

RUN pip install plotly

# Configuring access to Jupyter
RUN mkdir /home/workspace
RUN jupyter notebook --generate-config --allow-root
RUN echo "c.NotebookApp.password = u'sha1:6a3f528eec40:6e896b6e4828f525a6e20e5411cd1c8075d68619'" >> /root/.jupyter/jupyter_notebook_config.py

# Jupyter listens port: 8888
EXPOSE 8888

# Run Jupytewr notebook as Docker main process
CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/home/workspace/notebooks", "--ip='0.0.0.0'", "--port=8888", "--no-browser"]
