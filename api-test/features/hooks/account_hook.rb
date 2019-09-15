Before do |scenario|
  @name = Faker::Name.first_name
  @last_name = Faker::Name.last_name
  @email = Faker::Internet.email
  @cpf = Faker::CPF.numeric

  @body = {
      name: @name,
      lastname: @last_name,
      email: @email,
      password: "123456",
      cpf: @cpf,
      birthdate: "10/10/1980",
      phone: "(23) 45678-9876"
    }

  @cpf_body = {
      emailOrCpf: @cpf
  }

  @true_cpf = {
    emailOrCpf: "419.912.516-70"
  }

  @headers = {
      Authorization: "Basic Token"
  }

  @user_login = {
    emailOrCpf: "419.912.516-70",
    password: "123456"
  }

  @user_login_pw_fail = {
    emailOrCpf: "419.912.516-70",
    password: "123457"
  }

    @create_account = Account.new(@body, @headers)
    @checkcpf = Check_cpf.new(@cpf_body, @headers, @true_cpf)
    @login = Login.new(@user_login, @headers, @user_login_pw_fail)
end
