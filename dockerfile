FROM python:3.7-buster
RUN mkdir /home/devopstest
WORKDIR /home/devopstest
COPY ./ /home/devopstest/
RUN pip install -r home/devopstest/requirements.txt
EXPOSE 8000
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000"]