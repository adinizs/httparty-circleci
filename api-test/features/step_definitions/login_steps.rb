#ecoding: uft-8

Dado("que eu informe um CPF cadastrado") do
    @validate_cpf = @checkcpf.check_true
    expect(@validate_cpf.parsed_response['msg']).to eq true
end
  
Quando("realizar o login") do
    @account_login = @login.login
end
  
Então("o login deve ser realizado com sucesso") do
    expect(@account_login.code).to eq 200
    expect(@account_login.parsed_response['success']).to eq true
    expect(@account_login.parsed_response['msg']).to eq "Login realizado com sucesso."
end

Quando("realizar o login com a senha inválida") do
    @login_fail = @login.login_fail
end
  
Então("o login não deve ser realizado") do
    expect(@login_fail.code).to eq 200
    expect(@login_fail.parsed_response['success']).to eq false
    expect(@login_fail.parsed_response['msg']).to eq "Senha incorreta. Tente novamente."
end