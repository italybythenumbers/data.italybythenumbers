# FROM datasetteproject/datasette
#
# ADD metadata.json metadata.json
# ADD sqlite/bilancio-dello-stato.db bilancio-dello-stato.db
FROM python:3.6-slim-stretch
RUN apt update
RUN apt install -y python3-dev gcc
RUN pip install https://github.com/simonw/datasette/archive/master.zip
RUN pip install csvs-to-sqlite
ADD metadata.json metadata.json
ADD csv csv
RUN csvs-to-sqlite \
  /csv/bilancio-dello-stato \
  /bilancio-dello-stato.db \
  -s ';' \
  --replace-tables

EXPOSE 8001
CMD ["datasette", "serve", "--host", "0.0.0.0", "--port", "8001", "--config", "allow_download:off", "bilancio-dello-stato.db", "--metadata", "/metadata.json"]
