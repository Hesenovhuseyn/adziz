FROM python:3.10-slim

# Gerekli sistem bağımlılıklarını kur
RUN apt-get update && apt-get install -y git

# Repo klonla
RUN git clone https://github.com/Hesenovhuseyn/adziz /root/adziz
WORKDIR /root/adziz/

# Gereksinimleri yükle
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Ana betiği çalıştır
CMD ["python", "main.py"]
