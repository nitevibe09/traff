# 1. TraffMonetizer'ın resmi motorunu kullan
FROM traffmonetizer/cli_v2:latest

# 2. Render'ın "uygulama yaşıyor mu?" kontrolü için gerekli araç (Python)
USER root
RUN apt-get update && apt-get install -y python3 && rm -rf /var/lib/apt/lists/

# 3. Çalışma klasörü
WORKDIR /app

# 4. Sistemi başlatan ve Render'ı kandıran komut
# Hem cihazı bağlar hem de 7860 portundan "ben buradayım" sinyali gönderir.
CMD ./TraffMonetizer.Cli start accept --token V5TrZciFMDzEtSxxAfFvEMewXNmlAe7rXHcPPSpMK0U= --device-name Render-PLW-1 & python3 -m http.server $PORT
