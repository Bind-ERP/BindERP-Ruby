=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ProductsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ProductsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductsApi' do
    it 'should create an instance of ProductsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ProductsApi)
    end
  end

  # unit tests for products_add_product
  # Agregar Producto
  # 
  # @param new_product 
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'products_add_product test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for products_delete_by_id
  # Borrar Producto
  # 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'products_delete_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for products_edit_product
  # Editar Producto
  # 
  # @param product 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'products_edit_product test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for products_get
  # Obtiene la lista de productos.
  # El filtro es opcional
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filters the results, based on a Boolean condition.
  # @option opts [String] :orderby Sorts the results.
  # @option opts [Integer] :top Returns only the first n results.
  # @option opts [Integer] :skip Skips the first n results.
  # @return [ProductPage]
  describe 'products_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for products_get_detail
  # Obtiene los detalles de un producto.
  # 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ProductDetails]
  describe 'products_get_detail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for products_get_image
  # Obtiene la imagen del producto.
  # 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'products_get_image test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
