=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ProspectsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProspectsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ProspectsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProspectsApi' do
    it 'should create an instance of ProspectsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ProspectsApi)
    end
  end

  # unit tests for prospects_add_prospect
  # Agregar Prospecto
  # 
  # @param new_prospect 
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'prospects_add_prospect test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for prospects_delete_by_id
  # Borrar Prospecto
  # 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'prospects_delete_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for prospects_edit_client
  # Editar Prospecto
  # 
  # @param prospect 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'prospects_edit_client test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for prospects_get
  # Obtiene los detalles de un prospecto.
  # 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ProspectDetails]
  describe 'prospects_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for prospects_get_prospects
  # Obtiene la lista de prospectos.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filters the results, based on a Boolean condition.
  # @option opts [String] :orderby Sorts the results.
  # @option opts [Integer] :top Returns only the first n results.
  # @option opts [Integer] :skip Skips the first n results.
  # @return [ProspectListItemPage]
  describe 'prospects_get_prospects test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
