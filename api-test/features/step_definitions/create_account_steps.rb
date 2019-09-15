#ecoding: uft-8

Dado("que eu informe um CPF sem cadastro") do
  @validate_cpf = @checkcpf.check
  expect(@validate_cpf.parsed_response['msg']).to eq false
end

Quando("realizar uma requisição POST no serviço de cadastro") do
  @new_account = @create_account.new_account
end

Então("o status code deve ser {int}") do |status_code|
  expect(@new_account.code).to eq status_code
end

Então("o cliente deve ser cadastrado com sucesso") do
  expect(@new_account.parsed_response['success']).to eq true
  expect(@new_account.parsed_response['msg']).to eq "A conta foi criada com sucesso."
end