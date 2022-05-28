FROM python:3.10.4-alpine

RUN mkdir /home/devopstest
WORKDIR /home/devopstest

RUN pip install --upgrade pip 

COPY ./requirements.txt /home/devopstest
RUN pip install -r requirements.txt

COPY ./ /home/devopstest

EXPOSE 8000

ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000"]
