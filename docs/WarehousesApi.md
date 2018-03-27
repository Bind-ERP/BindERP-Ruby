# SwaggerClient::WarehousesApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**warehouses_get**](WarehousesApi.md#warehouses_get) | **GET** /api/Warehouses | Obtiene la lista de almacenes.


# **warehouses_get**
> WarehousePage warehouses_get(opts)

Obtiene la lista de almacenes.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WarehousesApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de almacenes.
  result = api_instance.warehouses_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WarehousesApi->warehouses_get: #{e}"
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

[**WarehousePage**](WarehousePage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



