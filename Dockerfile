# Используем официальный образ Jupyter
FROM jupyter/base-notebook:latest

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем все файлы проекта (включая папку data) в контейнер
COPY . /app

# Открываем порт 8888 для доступа к Jupyter
EXPOSE 8888

# Устанавливаем все зависимости, если они указаны в requirements.txt
# Если у вас есть requirements.txt, раскомментируйте следующую строку
# RUN pip install -r requirements.txt

# Запускаем Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.ip='0.0.0.0'"]
