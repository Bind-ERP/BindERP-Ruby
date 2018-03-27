# SwaggerClient::ProvidersApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**providers_add_provider**](ProvidersApi.md#providers_add_provider) | **POST** /api/Providers | Agregar Proveedor
[**providers_delete_by_id**](ProvidersApi.md#providers_delete_by_id) | **DELETE** /api/Providers/{id} | Borrar Proveedor
[**providers_edit_provider**](ProvidersApi.md#providers_edit_provider) | **PUT** /api/Providers | Editar Proveedor
[**providers_get_providers**](ProvidersApi.md#providers_get_providers) | **GET** /api/Providers | Obtiene la lista de proveedores.


# **providers_add_provider**
> String providers_add_provider(new_provider)

Agregar Proveedor



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProvidersApi.new

new_provider = SwaggerClient::NewProvider.new # NewProvider | 


begin
  #Agregar Proveedor
  result = api_instance.providers_add_provider(new_provider)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_add_provider: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_provider** | [**NewProvider**](NewProvider.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **providers_delete_by_id**
> providers_delete_by_id(id)

Borrar Proveedor



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProvidersApi.new

id = "id_example" # String | 


begin
  #Borrar Proveedor
  api_instance.providers_delete_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_delete_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **providers_edit_provider**
> providers_edit_provider(provider)

Editar Proveedor



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProvidersApi.new

provider = SwaggerClient::EditProvider.new # EditProvider | 


begin
  #Editar Proveedor
  api_instance.providers_edit_provider(provider)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_edit_provider: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | [**EditProvider**](EditProvider.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



# **providers_get_providers**
> ProviderListItemPage providers_get_providers(opts)

Obtiene la lista de proveedores.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProvidersApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de proveedores.
  result = api_instance.providers_get_providers(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_get_providers: #{e}"
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

[**ProviderListItemPage**](ProviderListItemPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



