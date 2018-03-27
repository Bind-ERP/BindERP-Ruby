=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class WarehousesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Obtiene la lista de almacenes.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [WarehousePage]
    def warehouses_get(opts = {})
      data, _status_code, _headers = warehouses_get_with_http_info(opts)
      return data
    end

    # Obtiene la lista de almacenes.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [Array<(WarehousePage, Fixnum, Hash)>] WarehousePage data, response status code and response headers
    def warehouses_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WarehousesApi.warehouses_get ..."
      end
      # resource path
      local_var_path = "/api/Warehouses"

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
        :return_type => 'WarehousePage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WarehousesApi#warehouses_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
