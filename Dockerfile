FROM python:3.9

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /app

WORKDIR /app

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]
