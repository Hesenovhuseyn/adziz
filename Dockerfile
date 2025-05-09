FROM python:3.10-slim

# Sistem bağımlılıklarını kur
RUN apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    gcc \
    git \
    libffi-dev \
    libssl-dev

# Uygulamayı klonla
RUN git clone https://github.com/Hesenovhuseyn/adziz /root/adziz
WORKDIR /root/adziz/

# Pip'i güncelle ve gereksinimleri kur
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

CMD ["python", "main.py"]
