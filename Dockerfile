FROM python:3.6-alpine

WORKDIR /opt

COPY . ./

RUN pip install flask

EXPOSE 8080

ENV ODOO_URL=https://www.odoo.com/fr_FR

ENV PGADMIN_URL=https://www.pgadmin.org/

CMD [ "python", "./app.py" ]