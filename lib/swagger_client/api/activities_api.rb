=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class ActivitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Agregar actividad
    # 
    # @param new_activity 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def activities_add_activity(new_activity, opts = {})
      activities_add_activity_with_http_info(new_activity, opts)
      return nil
    end

    # Agregar actividad
    # 
    # @param new_activity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def activities_add_activity_with_http_info(new_activity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActivitiesApi.activities_add_activity ..."
      end
      # verify the required parameter 'new_activity' is set
      if @api_client.config.client_side_validation && new_activity.nil?
        fail ArgumentError, "Missing the required parameter 'new_activity' when calling ActivitiesApi.activities_add_activity"
      end
      # resource path
      local_var_path = "/api/Activities"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(new_activity)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivitiesApi#activities_add_activity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
