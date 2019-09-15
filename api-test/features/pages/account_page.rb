class Account
    include HTTParty
    require_relative '../hooks/account_hook.rb'
    base_uri "http://localhost:8000"

    def initialize(body, headers)
        @user_options = {:body => body, :headers => headers}
    end

    def new_account
        self.class.post("/_account/create", @user_options)
    end

end