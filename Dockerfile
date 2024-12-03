FROM python:latest
COPY . .
RUN pip install -r requirements.txt
ENV YOUR_NAME=harley
EXPOSE 5500
ENTRYPOINT ["python", "app.py"]