=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class CommentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Agregar comentario
    # 
    # @param new_comment 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def comments_add_comment(new_comment, opts = {})
      comments_add_comment_with_http_info(new_comment, opts)
      return nil
    end

    # Agregar comentario
    # 
    # @param new_comment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def comments_add_comment_with_http_info(new_comment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommentsApi.comments_add_comment ..."
      end
      # verify the required parameter 'new_comment' is set
      if @api_client.config.client_side_validation && new_comment.nil?
        fail ArgumentError, "Missing the required parameter 'new_comment' when calling CommentsApi.comments_add_comment"
      end
      # resource path
      local_var_path = "/api/Comments"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(new_comment)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommentsApi#comments_add_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Listar comentarios por external ID
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [CommentPage]
    def comments_get(opts = {})
      data, _status_code, _headers = comments_get_with_http_info(opts)
      return data
    end

    # Listar comentarios por external ID
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filters the results, based on a Boolean condition.
    # @option opts [String] :orderby Sorts the results.
    # @option opts [Integer] :top Returns only the first n results.
    # @option opts [Integer] :skip Skips the first n results.
    # @return [Array<(CommentPage, Fixnum, Hash)>] CommentPage data, response status code and response headers
    def comments_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommentsApi.comments_get ..."
      end
      # resource path
      local_var_path = "/api/Comments"

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
        :return_type => 'CommentPage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommentsApi#comments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
