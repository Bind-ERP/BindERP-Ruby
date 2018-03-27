# SwaggerClient::ClientsApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clients_add_client**](ClientsApi.md#clients_add_client) | **POST** /api/Clients | Agregar Cliente
[**clients_delete_by_id**](ClientsApi.md#clients_delete_by_id) | **DELETE** /api/Clients/{id} | Borrar Cliente
[**clients_edit_client**](ClientsApi.md#clients_edit_client) | **PUT** /api/Clients | Editar Cliente
[**clients_get**](ClientsApi.md#clients_get) | **GET** /api/Clients | Obtiene la lista de clientes.
[**clients_get_details**](ClientsApi.md#clients_get_details) | **GET** /api/Clients/{id} | Obtiene los detalles de un cliente.


# **clients_add_client**
> String clients_add_client(new_client)

Agregar Cliente



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClientsApi.new

new_client = SwaggerClient::NewClient.new # NewClient | 


begin
  #Agregar Cliente
  result = api_instance.clients_add_client(new_client)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClientsApi->clients_add_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_client** | [**NewClient**](NewClient.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **clients_delete_by_id**
> clients_delete_by_id(id)

Borrar Cliente



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClientsApi.new

id = "id_example" # String | 


begin
  #Borrar Cliente
  api_instance.clients_delete_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClientsApi->clients_delete_by_id: #{e}"
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



# **clients_edit_client**
> clients_edit_client(client)

Editar Cliente



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClientsApi.new

client = SwaggerClient::EditClient.new # EditClient | 


begin
  #Editar Cliente
  api_instance.clients_edit_client(client)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClientsApi->clients_edit_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | [**EditClient**](EditClient.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



# **clients_get**
> ClientListItemPage clients_get(opts)

Obtiene la lista de clientes.

El filtro es opcional

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClientsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de clientes.
  result = api_instance.clients_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClientsApi->clients_get: #{e}"
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

[**ClientListItemPage**](ClientListItemPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **clients_get_details**
> ClientDetails clients_get_details(id)

Obtiene los detalles de un cliente.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClientsApi.new

id = "id_example" # String | 


begin
  #Obtiene los detalles de un cliente.
  result = api_instance.clients_get_details(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClientsApi->clients_get_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**ClientDetails**](ClientDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



