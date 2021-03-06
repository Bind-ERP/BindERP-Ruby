=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ActivitiesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ActivitiesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ActivitiesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActivitiesApi' do
    it 'should create an instance of ActivitiesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ActivitiesApi)
    end
  end

  # unit tests for activities_add_activity
  # Agregar actividad
  # 
  # @param new_activity 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'activities_add_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
