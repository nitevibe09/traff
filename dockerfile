# 1. Resmi TraffMonetizer imajı (Alpine tabanlı)
FROM traffmonetizer/cli_v2:latest

# 2. Alpine Linux'ta paket yükleme komutu (apk)
USER root
RUN apk update && apk add --no-cache python3

# 3. Çalışma klasörü
WORKDIR /app

# 4. Sistemi başlat (Render portu ile beraber)
CMD ./TraffMonetizer.Cli start accept --token V5TrZciFMDzEtSxxAfFvEMewXNmlAe7rXHcPPSpMK0U= --device-name Render-PLW-1 & python3 -m http.server $PORT
