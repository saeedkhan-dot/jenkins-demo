FROM python:3.11
WORKDIR /9
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5001
CMD ["python", "app.py"]