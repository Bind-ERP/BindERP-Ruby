=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BankAccountsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BankAccountsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BankAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BankAccountsApi' do
    it 'should create an instance of BankAccountsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BankAccountsApi)
    end
  end

  # unit tests for bank_accounts_get
  # Obtiene la lista de cuentas bancarias.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filters the results, based on a Boolean condition.
  # @option opts [String] :orderby Sorts the results.
  # @option opts [Integer] :top Returns only the first n results.
  # @option opts [Integer] :skip Skips the first n results.
  # @return [BankAccountPage]
  describe 'bank_accounts_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
