=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class CatalogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Obtiene la lista de bancos.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [BankPage]
    def catalogs_get_banks(opts = {})
      data, _status_code, _headers = catalogs_get_banks_with_http_info(opts)
      return data
    end

    # Obtiene la lista de bancos.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [Array<(BankPage, Fixnum, Hash)>] BankPage data, response status code and response headers
    def catalogs_get_banks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogsApi.catalogs_get_banks ..."
      end
      # resource path
      local_var_path = "/api/Banks"

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
        :return_type => 'BankPage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogsApi#catalogs_get_banks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obtiene la lista de Categorias.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<Category1>]
    def catalogs_get_categories(opts = {})
      data, _status_code, _headers = catalogs_get_categories_with_http_info(opts)
      return data
    end

    # Obtiene la lista de Categorias.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Category1>, Fixnum, Hash)>] Array<Category1> data, response status code and response headers
    def catalogs_get_categories_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogsApi.catalogs_get_categories ..."
      end
      # resource path
      local_var_path = "/api/Categories"

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
        :return_type => 'Array<Category1>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogsApi#catalogs_get_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obtiene la lista de monedas.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [CurrencyPage]
    def catalogs_get_currencies(opts = {})
      data, _status_code, _headers = catalogs_get_currencies_with_http_info(opts)
      return data
    end

    # Obtiene la lista de monedas.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [Array<(CurrencyPage, Fixnum, Hash)>] CurrencyPage data, response status code and response headers
    def catalogs_get_currencies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogsApi.catalogs_get_currencies ..."
      end
      # resource path
      local_var_path = "/api/Currencies"

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
        :return_type => 'CurrencyPage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogsApi#catalogs_get_currencies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obtiene la lista de sucursales.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [LocationPage]
    def catalogs_get_locations(opts = {})
      data, _status_code, _headers = catalogs_get_locations_with_http_info(opts)
      return data
    end

    # Obtiene la lista de sucursales.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [Array<(LocationPage, Fixnum, Hash)>] LocationPage data, response status code and response headers
    def catalogs_get_locations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogsApi.catalogs_get_locations ..."
      end
      # resource path
      local_var_path = "/api/Locations"

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
        :return_type => 'LocationPage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogsApi#catalogs_get_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obtiene la lista de precios.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [PriceListPage]
    def catalogs_get_price_lists(opts = {})
      data, _status_code, _headers = catalogs_get_price_lists_with_http_info(opts)
      return data
    end

    # Obtiene la lista de precios.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [Array<(PriceListPage, Fixnum, Hash)>] PriceListPage data, response status code and response headers
    def catalogs_get_price_lists_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogsApi.catalogs_get_price_lists ..."
      end
      # resource path
      local_var_path = "/api/PriceLists"

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
        :return_type => 'PriceListPage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogsApi#catalogs_get_price_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obtiene la lista de Series.
    # 
    # @param doc_type 
    # @param [Hash] opts the optional parameters
    # @return [Array<Series>]
    def catalogs_get_series(doc_type, opts = {})
      data, _status_code, _headers = catalogs_get_series_with_http_info(doc_type, opts)
      return data
    end

    # Obtiene la lista de Series.
    # 
    # @param doc_type 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Series>, Fixnum, Hash)>] Array<Series> data, response status code and response headers
    def catalogs_get_series_with_http_info(doc_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogsApi.catalogs_get_series ..."
      end
      # verify the required parameter 'doc_type' is set
      if @api_client.config.client_side_validation && doc_type.nil?
        fail ArgumentError, "Missing the required parameter 'doc_type' when calling CatalogsApi.catalogs_get_series"
      end
      # resource path
      local_var_path = "/api/Series"

      # query parameters
      query_params = {}
      query_params[:'docType'] = doc_type

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
        :return_type => 'Array<Series>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogsApi#catalogs_get_series\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obtiene la lista de usuarios.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [UserPage]
    def catalogs_get_users(opts = {})
      data, _status_code, _headers = catalogs_get_users_with_http_info(opts)
      return data
    end

    # Obtiene la lista de usuarios.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [Array<(UserPage, Fixnum, Hash)>] UserPage data, response status code and response headers
    def catalogs_get_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogsApi.catalogs_get_users ..."
      end
      # resource path
      local_var_path = "/api/Users"

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
        :return_type => 'UserPage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogsApi#catalogs_get_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
