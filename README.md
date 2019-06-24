<h1>Arquitetura do projeto</h1>

Ambiente local
-------------------------
Necessário instalar:
-----------------------

*	Ruby 2.5.5 <https://www.ruby-lang.org/pt/documentation/installation/>
*	Firefox
*	Google Chrome
*	Chromedriver: Driver do navegador que será utilizado na automação. Disponível no site do <https://sites.google.com/a/chromium.org/chromedriver/downloads>.
*	GeckoDriver: Driver do navegador Firefox. Disponível no site <https://github.com/mozilla/geckodriver/releases> .

Obs: Se vc usa linux ou macOS, recomento utilizar um gerenciador de versão, RVM ou rbenv para baixar a versão do ruby. Para os drivers, baixar a versão do driver referente a versão do seu navegador.


<h3> Instalando o chromedriver e Geckodriver</h3>

Baixe os drivers e coloque em um path que possa ser acessado, eu por exemplo utilizo o diretório:

```bash
/usr/local/bin/
```

<h3>Instalando o bundler</h3>

Após instalar o ruby, execute o seguinte comando:

```bash
gem install bundler
```

Para que seja instalado o gerenciador de pacotes do ruby.

<h3>Instalando as dependencias</h3>

Na raiz do projeto devemos instalar as dependenciaas contidas no Gemfile, usando o seguinte comando:

```bash
bundle install
```

Isso pode demorar um pouco, mas ao final todas as dependencias serão instaladas.



<h3>Gem utilizadas</h3>

Capybara
-------------------------

Link: <https://github.com/teamcapybara/capybara>


Cucumber
-------------------------

Link: <https://cucumber.io/docs/installation/ruby/>


Faker
-------------------------

Link: <https://github.com/stympy/faker>


Pry
-------------------------

Link: <https://github.com/pry/pry>


RSpec:
-------------------------

Link: <https://github.com/rspec/rspec>


Selenium Webdriver
-------------------------

Link: <https://github.com/SeleniumHQ/selenium/tree/master/rb>


SitePrism
-------------------------

Link: <https://github.com/site-prism/site_prism>


<h3>Executando os teste</h3>

Para executar o testes automatizados usaremos alguns comandos a partir da pasta raiz do nosso projeto.

*	Para execução de todos os cenários implementados com o navegador chrome padrão utilizamos o seguinte código:
````bash
bundle exec cucumber
````

* Para a execução utilizando outro navegador por exemplo firefox, utilizamos o seguinte comando:
````bash
bundle exec cucumber -p firefox
````

* Para a execução utilizando firefox em modo headless, utilizamos o seguinte comando:
````bash
bundle exec cucumber -p firefox_headless
````

* Para a execução utilizando chrome em modo headless, utilizamos o seguinte comando:
````bash
bundle exec cucumber -p chrome_headless
````

* Para a execução com report, tanto e report padrão do cucumber quanto o json que pode ser lido no Jenkins, utilizamos o seguinte comando:
````bash
bundle exec cucumber -p chrome_headless -p report
````

Obs: Os profiles são configurados no arquivo cucumber.yml
 O comando -p é utilizado para indicar o profile utilizado para executar os testes, por exemplo:
-p firefox quer dizer que ao executar os teste ele utilizará o profile do firefox, vc pode combinar diversos profiles como no exemplo acima.


Contato
-------
Estou aberto a sugestões, elogios, críticas ou qualquer outro tipo de comentário. 

*	E-mail: felipe_rodriguesx@hotmail.com.br
*	Linkedin: <https://www.linkedin.com/in/luis-felipe-rodrigues-de-oliveira-2b056b5a/>

Licença
-------
Esse código é livre para ser usado dentro dos termos da licença MIT license
