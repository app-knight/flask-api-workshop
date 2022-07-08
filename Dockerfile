FROM python:3.10-alpine

WORKDIR /usr/src/app

COPY ./requirments.txt ./

RUN pip install --upgrade pip && pip install --no-cache-dir -r requirments.txt

COPY . .

CMD [ "python", "./api.py" ]