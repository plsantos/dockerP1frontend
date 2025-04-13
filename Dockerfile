# Construindo da imagem
FROM node:18 AS build

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Etapa 2: Utulizando a aplicação com Nginx
FROM nginx:alpine

# Limpar o diretório de scripts de inicialização, se houver
RUN rm -rf /docker-entrypoint.d/*

# Copiando os arquivos da pasta build do container de build para o Nginx
COPY --from=build /app/build /usr/share/nginx/html

# Usando a porta 80 para o Nginx
EXPOSE 80

# Iniciando o Nginx
CMD ["nginx", "-g", "daemon off;"]
