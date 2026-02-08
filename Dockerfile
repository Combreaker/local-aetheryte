FROM alpine:3.14
WORKDIR /app
COPY . .
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN python3 -m venv /venv
RUN . /venv/bin/activate
RUN pip3 install --no-cache --upgrade pip setuptools
RUN pip3 install -r requirements.txt
