FROM python:3.9-slim

WORKDIR /app

COPY project1examplerequirements.txt .

RUN pip install --no-cache-dir -r project1examplerequirements.txt

COPY project1example.py .

EXPOSE 5000

CMD ["python", "project1example.py"]
