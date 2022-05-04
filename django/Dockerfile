FROM python:3.8.3
ENV PYTHONUNBUFFERED 1

# pip install
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
