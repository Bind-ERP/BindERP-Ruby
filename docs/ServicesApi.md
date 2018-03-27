# SwaggerClient::ServicesApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**services_add_product**](ServicesApi.md#services_add_product) | **POST** /api/Services | Agregar Concepto de Venta
[**services_delete_by_id**](ServicesApi.md#services_delete_by_id) | **DELETE** /api/Services/{id} | Borrar Servicio
[**services_edit_product**](ServicesApi.md#services_edit_product) | **PUT** /api/Services | Editar Concepto de Venta
[**services_get_services**](ServicesApi.md#services_get_services) | **GET** /api/Services | Obtiene la lista de conceptos de venta.


# **services_add_product**
> String services_add_product(new_service)

Agregar Concepto de Venta



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ServicesApi.new

new_service = SwaggerClient::NewService.new # NewService | 


begin
  #Agregar Concepto de Venta
  result = api_instance.services_add_product(new_service)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServicesApi->services_add_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_service** | [**NewService**](NewService.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **services_delete_by_id**
> services_delete_by_id(id)

Borrar Servicio



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ServicesApi.new

id = "id_example" # String | 


begin
  #Borrar Servicio
  api_instance.services_delete_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServicesApi->services_delete_by_id: #{e}"
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



# **services_edit_product**
> services_edit_product(service)

Editar Concepto de Venta



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ServicesApi.new

service = SwaggerClient::EditService.new # EditService | 


begin
  #Editar Concepto de Venta
  api_instance.services_edit_product(service)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServicesApi->services_edit_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | [**EditService**](EditService.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



# **services_get_services**
> ServicesPage services_get_services(opts)

Obtiene la lista de conceptos de venta.

El filtro es opcional

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ServicesApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de conceptos de venta.
  result = api_instance.services_get_services(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServicesApi->services_get_services: #{e}"
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

[**ServicesPage**](ServicesPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



