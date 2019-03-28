FROM python:3.6

WORKDIR /src

COPY requirements.txt src/requirements.txt

RUN pip install -r src/requirements.txt

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install jupyter

EXPOSE 8899

CMD ["jupyter-notebook"]
