FROM python:3.11.9-slim

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Просто копируем все файлы из текущей локальной директории, где лежит наш Dockerfile в директорию APP
COPY . .

EXPOSE 8000

CMD [ "python", "main.py", "--host", "0.0.0.0", "--port", "8000"]
