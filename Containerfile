FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN l1_rochacbruno_quart_template create-db
RUN l1_rochacbruno_quart_template populate-db
RUN l1_rochacbruno_quart_template add-user -u admin -p admin
EXPOSE 5000
CMD ["l1_rochacbruno_quart_template", "run"]
