FROM ruby:3.0.2


# Instalar dependências necessárias
RUN apt-get update -qq && apt-get install -y build-essential \
  build-essential \
  libpq-dev \
  nodejs \
  vim \
  htop \
  gnupg \
  g++ \
  make \
  wget \
  apt-utils \
  lsb-release

RUN apt-get install -y g++ make

RUN gem install mini_racer -v '0.8.0' --source 'https://rubygems.org/' \
    && gem install libv8-node -v '18.16.0.0' --source 'https://rubygems.org/' 

RUN gem install psych -v '3.3.0'

# Configurar o repositório do Postgres
RUN echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list \
  && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor -o /usr/share/keyrings/pgdg-archive-keyring.gpg \
  && echo "deb [signed-by=/usr/share/keyrings/pgdg-archive-keyring.gpg] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# Instalar o Postgres
RUN apt-get update -qq && apt-get install -y postgresql-14 postgresql-client-14

RUN gem install mini_portile2 -v '2.4.0'

# Instale a versão específica do Bundler
RUN gem install bundler:2.4.22

# Configurar o diretório de trabalho e copiar os arquivos do aplicativo
WORKDIR /home/app/web
COPY . .

# Atualize as gems para garantir que a versão correta do Bundler seja usada
RUN bundle update --bundler

# Após a instalação das gems
RUN rails generate 

# Instalar as dependências do Bundler
RUN bundle install --jobs 5 --retry 5