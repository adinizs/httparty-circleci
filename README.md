# Automação de APIs

## Dependencies

* ruby 2.5.x ou superior

## Instrucoes para instalacao

#### Instalar o bundler
Para começar, instale o bundler:

```
  gem install bundler
```

```
  bundle install
```


### Executar o teste

O projeto usa o Cucumber para executar seus testes, você pode usar os seguintes comandos para executar:

```
  cucumber -t @tag
```


### TAGS
Tags por tipos de teste:

@login - Para o cenário de Login

@login_pw_fail - Para o cenário de senha inválida

@create_account - Para o cenário de cadastro de um novo cliente
