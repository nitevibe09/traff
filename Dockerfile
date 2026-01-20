FROM traffmonetizer/cli_v2:latest

USER root
# Hem internet araçlarını hem de Render'ı kandıracak sunucuyu kuruyoruz
RUN apk add --no-cache python3 curl

# Render'ın portunu dinleyen ve Traff'ı başlatan komut
# App/Cli yolunu kesinleştirmiştik, onu kullanıyoruz
ENTRYPOINT ["/bin/sh", "-c", "/app/Cli start accept --token V5TrZciFMDzEtSxxAfFvEMewXNmlAe7rXHcPPSpMK0U= --device-name RENDER-PLW-FULL & python3 -m http.server $PORT"]
