class Login
    include HTTParty
    require_relative '../hooks/account_hook.rb'
    base_uri "http://localhost:8000"

    def initialize(user_login, headers, user_login_pw_fail)
        @login = {:body => user_login, :headers => headers}
        @fail_pw = {:body => user_login_pw_fail, :headers => headers}
    end

    def login
        self.class.post('/_account/login', @login)
    end

    def login_fail
        self.class.post('/_account/login', @fail_pw)
    end
end
