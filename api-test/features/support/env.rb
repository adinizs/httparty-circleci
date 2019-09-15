require 'rspec'
require 'httparty'
require 'openssl'
require 'faker'
require 'cpf_faker'

# Ignore SSL certificate for API requests
HTTParty::Basement.default_options.update(verify: false)
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE