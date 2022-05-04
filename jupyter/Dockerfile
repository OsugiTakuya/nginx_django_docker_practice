FROM python:3.8.3

# pip install
WORKDIR /notebook
COPY requirements.txt /notebook/
RUN pip install -r requirements.txt
COPY . /notebook/

# jupyter設定
RUN jupyter notebook --generate-config
#RUN echo "c.NotebookApp.password = 'sha1:099fb02aae7d:8350f59667778656fffd0859a028ee90a28ef5bc'" >> ~/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.port = 8888" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.token = u''" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.allow_root = True" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.notebook_dir = '/notebook/endoscope_scheduling'" >> ~/.jupyter/jupyter_notebook_config.py

CMD ["jupyter-notebook"]
