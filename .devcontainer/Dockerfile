FROM python:3.10
RUN pip install -r requirements.txt
COPY requirements.txt
COPY .app ./app
COPY .config ./config
CMD ["python","./app/download.sh"]