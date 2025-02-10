# Usa Python 3.12 como base
FROM python:3.12  

# Evita criação de arquivos .pyc
ENV PYTHONDONTWRITEBYTECODE=1  
ENV PYTHONUNBUFFERED=1  

# Define o diretório de trabalho dentro do container
WORKDIR /home/ubuntu/tcc/  

# Copia os arquivos do projeto
COPY . /home/ubuntu/tcc/  

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt  

# Ajusta configuração do Django (permite qualquer host)
RUN sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = \['*\']/" setup/settings.py  

# Expõe a porta 8000 para acesso externo
EXPOSE 8000  

# Define o comando de inicialização do container
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]


