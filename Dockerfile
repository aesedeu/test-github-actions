# Используйте официальный образ Python как базовый образ
FROM python:3.11

# Установите рабочую директорию в контейнере
WORKDIR /app

# Копируйте файлы вашего приложения и данных в рабочую директорию
COPY ./app.py .
COPY ./requirements.txt .

# установка зависимостей
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Откройте порт 8000
EXPOSE 8000

# Укажите команду для запуска вашего приложения
CMD ["python", "./app.py"]
