# Imagem base provida pelo DockerHub.
FROM node

# Criando o diretorio de trabalho. é o equivalente ao fazer um mkdir /app e depois um cd /app
WORKDIR /app

# Copiando os arquivos package.json e package-lock.json para o diretorio de trabalho.
COPY package*.json /app

# Instalando as dependencias do projeto. o RUN executa um comando no terminal, no caso o comando npm install.
RUN npm install 

# Copiando o resto dos arquivos desse diretório para dentro do /app.
COPY . .

# CMD é o comando de inicialização do container.n
CMD ["node", "index.js"]

# Agora é só utilizar o comando docker build -t nome_da_imagem . Sendo que o ponto é o contexto 