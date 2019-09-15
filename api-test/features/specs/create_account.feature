#language:pt

Funcionalidade: Criar nova conta
    @create_account
    Cenário: Criar conta

    Dado que eu informe um CPF sem cadastro
    Quando realizar uma requisição POST no serviço de cadastro
    Então o status code deve ser 200
    E o cliente deve ser cadastrado com sucesso