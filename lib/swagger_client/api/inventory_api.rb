=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class InventoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Agregar ajuste de inventario.
    # 
    # @param new_adjustment 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def inventory_add_inventory_adjustment(new_adjustment, opts = {})
      inventory_add_inventory_adjustment_with_http_info(new_adjustment, opts)
      return nil
    end

    # Agregar ajuste de inventario.
    # 
    # @param new_adjustment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def inventory_add_inventory_adjustment_with_http_info(new_adjustment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InventoryApi.inventory_add_inventory_adjustment ..."
      end
      # verify the required parameter 'new_adjustment' is set
      if @api_client.config.client_side_validation && new_adjustment.nil?
        fail ArgumentError, "Missing the required parameter 'new_adjustment' when calling InventoryApi.inventory_add_inventory_adjustment"
      end
      # resource path
      local_var_path = "/api/Inventory"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(new_adjustment)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryApi#inventory_add_inventory_adjustment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obtener inventario por almacén.
    # 
    # @param warehouse_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [InventorytPage]
    def inventory_get_inventory_by_warehouse_id(warehouse_id, opts = {})
      data, _status_code, _headers = inventory_get_inventory_by_warehouse_id_with_http_info(warehouse_id, opts)
      return data
    end

    # Obtener inventario por almacén.
    # 
    # @param warehouse_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [Array<(InventorytPage, Fixnum, Hash)>] InventorytPage data, response status code and response headers
    def inventory_get_inventory_by_warehouse_id_with_http_info(warehouse_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InventoryApi.inventory_get_inventory_by_warehouse_id ..."
      end
      # verify the required parameter 'warehouse_id' is set
      if @api_client.config.client_side_validation && warehouse_id.nil?
        fail ArgumentError, "Missing the required parameter 'warehouse_id' when calling InventoryApi.inventory_get_inventory_by_warehouse_id"
      end
      # resource path
      local_var_path = "/api/Inventory"

      # query parameters
      query_params = {}
      query_params[:'warehouseID'] = warehouse_id
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
        :return_type => 'InventorytPage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryApi#inventory_get_inventory_by_warehouse_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
