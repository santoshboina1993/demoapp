FROM python:3.7.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
#RUN pip install /app/model/en_core_web_md-3.0.0a0.tar
EXPOSE 5000
RUN python -m spacy download en_core_web_sm
CMD python ./api.py
#ENTRYPOINT FLASK_APP=/home/app/api.py flask run --host=0.0.0.0