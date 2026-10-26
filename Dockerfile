FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ .

ARG APP_ENV=development
ENV APP_ENV=${APP_ENV}

CMD ["python", "app.py"]
