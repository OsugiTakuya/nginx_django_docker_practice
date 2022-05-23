FROM centos:7

# cron, pythonに必要なもの
RUN yum update -y && yum install -y \
    cronie-noanacron \
    gcc make \
    bzip2-devel gdbm-devel libffi-devel \
    libuuid-devel ncurses-devel openssl-devel readline-devel \
    sqlite-devel xz-devel zlib-devel tk-devel \
    wget \
    postgresql-devel

# python install
WORKDIR /root
RUN wget https://www.python.org/ftp/python/3.8.3/Python-3.8.3.tgz
RUN tar xzvf Python-3.8.3.tgz
WORKDIR /root/Python-3.8.3
RUN ./configure --with-threads
RUN make install

# pip install
WORKDIR /notebook
COPY requirements.txt /notebook/
RUN pip3.8 install --upgrade pip && pip3.8 install -r requirements.txt
COPY . /notebook/

# jupyter設定
RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.port = 8888" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.allow_root = True" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.token = u''" >> ~/.jupyter/jupyter_notebook_config.py &&\
    #echo "c.NotebookApp.password = 'sha1:099fb02aae7d:8350f59667778656fffd0859a028ee90a28ef5bc'" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.notebook_dir = '/notebook/endoscope_scheduling'" >> ~/.jupyter/jupyter_notebook_config.py &&\
    # コンテキストルート設定
    echo "c.NotebookApp.base_url = '/jupyter/'" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.base_project_url = '/jupyter/'" >> ~/.jupyter/jupyter_notebook_config.py &&\
    echo "c.NotebookApp.webapp_settings = {'static_url_prefix':'/jupyter/static/'}" >> ~/.jupyter/jupyter_notebook_config.py &&\
    # kernel error対処
    echo "c.NotebookApp.allow_origin = '*'" >> ~/.jupyter/jupyter_notebook_config.py

# cron設定
RUN echo '* * * * * root echo "cron executed!" >> /var/log/cron.log 2>&1' > /etc/cron.d/gurobi_connect.cron
RUN chmod 0644 /etc/cron.d/*

# sh設定
RUN cp /notebook/init.sh /init.sh
RUN chmod +x /init.sh
CMD ["/init.sh"]
