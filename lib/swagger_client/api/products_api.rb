=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class ProductsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Agregar Producto
    # 
    # @param new_product 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def products_add_product(new_product, opts = {})
      data, _status_code, _headers = products_add_product_with_http_info(new_product, opts)
      return data
    end

    # Agregar Producto
    # 
    # @param new_product 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def products_add_product_with_http_info(new_product, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsApi.products_add_product ..."
      end
      # verify the required parameter 'new_product' is set
      if @api_client.config.client_side_validation && new_product.nil?
        fail ArgumentError, "Missing the required parameter 'new_product' when calling ProductsApi.products_add_product"
      end
      # resource path
      local_var_path = "/api/Products"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(new_product)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#products_add_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Borrar Producto
    # 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def products_delete_by_id(id, opts = {})
      products_delete_by_id_with_http_info(id, opts)
      return nil
    end

    # Borrar Producto
    # 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def products_delete_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsApi.products_delete_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductsApi.products_delete_by_id"
      end
      # resource path
      local_var_path = "/api/Products/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#products_delete_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Editar Producto
    # 
    # @param product 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def products_edit_product(product, opts = {})
      products_edit_product_with_http_info(product, opts)
      return nil
    end

    # Editar Producto
    # 
    # @param product 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def products_edit_product_with_http_info(product, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsApi.products_edit_product ..."
      end
      # verify the required parameter 'product' is set
      if @api_client.config.client_side_validation && product.nil?
        fail ArgumentError, "Missing the required parameter 'product' when calling ProductsApi.products_edit_product"
      end
      # resource path
      local_var_path = "/api/Products"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(product)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#products_edit_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obtiene la lista de productos.
    # El filtro es opcional
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [ProductPage]
    def products_get(opts = {})
      data, _status_code, _headers = products_get_with_http_info(opts)
      return data
    end

    # Obtiene la lista de productos.
    # El filtro es opcional
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [Array<(ProductPage, Fixnum, Hash)>] ProductPage data, response status code and response headers
    def products_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsApi.products_get ..."
      end
      # resource path
      local_var_path = "/api/Products"

      # query parameters
      query_params = {}
      query_params[:'$filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'$orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'$top'] = opts[:'top'] if !opts[:'top'].nil?
      query_params[:'$skip'] = opts[:'skip'] if !opts[:'skip'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProductPage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#products_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obtiene los detalles de un producto.
    # 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [ProductDetails]
    def products_get_detail(id, opts = {})
      data, _status_code, _headers = products_get_detail_with_http_info(id, opts)
      return data
    end

    # Obtiene los detalles de un producto.
    # 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProductDetails, Fixnum, Hash)>] ProductDetails data, response status code and response headers
    def products_get_detail_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsApi.products_get_detail ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductsApi.products_get_detail"
      end
      # resource path
      local_var_path = "/api/Products/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProductDetails')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#products_get_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obtiene la imagen del producto.
    # 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def products_get_image(id, opts = {})
      data, _status_code, _headers = products_get_image_with_http_info(id, opts)
      return data
    end

    # Obtiene la imagen del producto.
    # 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def products_get_image_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsApi.products_get_image ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductsApi.products_get_image"
      end
      # resource path
      local_var_path = "/api/Products/{id}/image".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#products_get_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
