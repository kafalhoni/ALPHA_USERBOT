FROM python:3.9-slim-bullseye

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends git curl ffmpeg && \
    rm -rf /var/lib/apt/lists/*

COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir -U pip && \
    pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
