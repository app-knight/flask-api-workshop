FROM python:3.10

WORKDIR /usr/src/app

COPY ./requirments.txt ./

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirments.txt

COPY . .

CMD [ "python", "./api.py" ]