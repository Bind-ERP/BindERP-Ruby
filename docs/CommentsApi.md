# SwaggerClient::CommentsApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**comments_add_comment**](CommentsApi.md#comments_add_comment) | **POST** /api/Comments | Agregar comentario
[**comments_get**](CommentsApi.md#comments_get) | **GET** /api/Comments | Listar comentarios por external ID


# **comments_add_comment**
> comments_add_comment(new_comment)

Agregar comentario



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CommentsApi.new

new_comment = SwaggerClient::NewComment.new # NewComment | 


begin
  #Agregar comentario
  api_instance.comments_add_comment(new_comment)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CommentsApi->comments_add_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_comment** | [**NewComment**](NewComment.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



# **comments_get**
> CommentPage comments_get(opts)

Listar comentarios por external ID



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CommentsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Listar comentarios por external ID
  result = api_instance.comments_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CommentsApi->comments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| Filters the results, based on a Boolean condition. | [optional] 
 **orderby** | **String**| Sorts the results. | [optional] 
 **top** | **Integer**| Returns only the first n results. | [optional] 
 **skip** | **Integer**| Skips the first n results. | [optional] 

### Return type

[**CommentPage**](CommentPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



