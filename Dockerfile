FROM python:3.7-slim-buster
#FROM 909216379109.dkr.ecr.us-east-1.amazonaws.com/docker-images:pyth3.7
RUN apt-get update -y

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["run.py"]