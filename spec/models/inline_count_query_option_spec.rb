=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::InlineCountQueryOption
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineCountQueryOption' do
  before do
    # run before each test
    @instance = SwaggerClient::InlineCountQueryOption.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineCountQueryOption' do
    it 'should create an instance of InlineCountQueryOption' do
      expect(@instance).to be_instance_of(SwaggerClient::InlineCountQueryOption)
    end
  end
  describe 'test attribute "context"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "raw_value"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["None", "AllPages"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.value = value }.not_to raise_error
       #end
    end
  end

end

