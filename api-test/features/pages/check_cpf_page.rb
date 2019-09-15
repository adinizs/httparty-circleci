class Check_cpf
    include HTTParty
    require_relative '../hooks/account_hook.rb'
    base_uri "http://localhost:8000"

    def initialize(cpf_body, headers, true_cpf)
        @check_cpf = {:body => cpf_body, :headers => headers}
        @user_cpf = {:body => true_cpf, :headers => headers}
    end

    def check
        self.class.post('/_account/exists', @check_cpf)
    end

    def check_true
        self.class.post('/_account/exists', @user_cpf)
    end 
end