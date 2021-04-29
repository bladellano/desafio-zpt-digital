## Desafio ZPTDIGITAL
Aplicação que realiza o CRUD de produtos.
* Utilização do composer para instalação dependências;
* Orientação a objetos;
* Princípio DRY;
* Princípio SOLID;
* Melhores práticas e PSRs;
* MVC.

#### Dependências
* PHP 7.4.16
* Apache/2.4.41 (Ubuntu)
* 10.4.17-MariaDB Source distribution

#### Componentes

* League/plates - Componente que trabalha com criação de template nativo do PHP;
* Matthiasmullie/minify - Para minificar os arquivos css e javascript;
* Coffeecode/router - Para criar rotas e verbalização rest;
* Coffeecode/dataLayer - Trabalhar com camadas de conexão com a base de dados;
* Coffeecode/paginator - Gera navegação para resultados na aplicação;
* Coffeecode/uploader - Gerenciador de upload de PHP para imagens, arquivos e mídias.

#### Libs
* jQuery JavaScript Library v3.5.1
* jQuery Mask Plugin v1.14.16
* jQuery UI - v1.12.1
* Bootstrap Toggle: bootstrap4-toggle.css v3.6.1

### Framework Front-end
* Bootstrap v4.0.0

#### Instalação
A instalação do sistema pode ser feita seguindo os seguintes passos:
> ATENÇAO: Os passos para instalação descritos nesta documentação, assumem que a aplicação rodará em uma estação Windows e que contenha todas as dependências instaladas e configuradas.

* Clonar ou baixar o projeto diretamente no `localhost` da estação. Link: https://github.com/bladellano/desafio-zptdigital
```bash
C:\xampp\htdocs
```
* Depois que baixar o respositório, instalar as dependências com o composer. Vá até um terminal ou prompt.
```bash
C:\xampp\htdocs\desafio-zptdigital\composer install
```
* Configurar o arquivo 'source\Config.php' da constant `SITE`
```bash
define("SITE", [
    "root" => "http://127.0.0.1/desafio-zptdigital"
]);
```
* Configurar o arquivo 'source\Config.php' da constant `DATA_LAYER_CONFIG`
```bash
define("DATA_LAYER_CONFIG", [
    "driver" => "mysql",
    "host" => "localhost",
    "port" => "3306",
    "dbname" => "db_zptdigital",
    "username" => "root",
    "passwd" => "root",
    "options" => [
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ,
        PDO::ATTR_CASE => PDO::CASE_NATURAL
    ]
]);
```
* Criar uma base de dados com o nome `db_zptdigital`. 
```bash
Importar a base de dados contida na raíz aplicação 'db_zptdigital.sql'
```

* Depois de seguir todos os passos, vá ate um navegador e acesse a tela principal dos produtos.
```bash
http://127.0.0.1/desafio-zptdigital/
```

* Tela do CRUD do produto.
```bash
http://127.0.0.1/desafio-zptdigital/produtos
```
### Creditos
Esta aplicação foi desenvolvida por [Caio Dellano Nunes da Silva](mailto:bladellano@gmail.com).
<br>
Site: www.dellanosites.com.br
