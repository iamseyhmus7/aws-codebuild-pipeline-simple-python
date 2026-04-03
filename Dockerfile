# 1. Hafif bir Python işletim sistemi seç
FROM python:3.9-slim

# 2. Konteynerin içinde /app adında bir çalışma klasörü yarat
WORKDIR /app

# 3. Senin D:\aws-codebuild-pipelin\ içindeki dosyalarını konteynere kopyala
COPY . /app

# 4. requirements.txt içindeki kütüphaneleri (Flask) kur
RUN pip install --no-cache-dir -r requirements.txt

# 5. Dışarıdan erişim için 80 portunu aç
EXPOSE 80

# 6. Konteyner ayağa kalktığında Python uygulamasını başlat
CMD ["python", "app.py"]
