#language:pt

Funcionalidade: Realizar Login
    @login
    Cenário: Login com sucesso

    Dado que eu informe um CPF cadastrado
    Quando realizar o login
    Então o login deve ser realizado com sucesso

    @login_pw_fail
    Cenário: Login com senha inválida

    Dado que eu informe um CPF cadastrado
    Quando realizar o login com a senha inválida
    Então o login não deve ser realizado
