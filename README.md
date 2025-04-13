# 📦 Frontend - Aplicação React

Atividade para avaliaçao de P1 - TESI-Docker desenvolvido em Node.js, com BD em MongoDB.

---

## 🛠 Como construir o projeto

Para construir a imagem Docker localmente, execute o comando:

```bash
docker build -t plsantos/frontend-service .
```

## ▶️ Como executar

### 🔹 Usando apenas Docker:

Para rodar a aplicação usando o Docker, execute o seguinte comando:

```bash
docker run -p 80:80 plsantos/frontend-service
```

Se estiver utilizando docker-compose, utilize o comando abaixo:

```bash
docker build -t plsantos/frontend-service .
```

## 🐳 Imagem no DockerHub

📦 **Link:** [https://hub.docker.com/r/plsantos/frontend-service](https://hub.docker.com/r/plsantos/frontend-service)

Para baixar a imagem:

```bash
docker pull plsantos/backend-service
```
