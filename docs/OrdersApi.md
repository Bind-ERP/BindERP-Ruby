# SwaggerClient::OrdersApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orders_add_order**](OrdersApi.md#orders_add_order) | **POST** /api/Orders | Agregar pedido
[**orders_delete_order**](OrdersApi.md#orders_delete_order) | **DELETE** /api/Orders/{id} | Eliminar pedido
[**orders_edit_order**](OrdersApi.md#orders_edit_order) | **PUT** /api/Orders | Editar pedido
[**orders_get_by_id**](OrdersApi.md#orders_get_by_id) | **GET** /api/Orders/{id} | Obtiene los detalles de un pedido


# **orders_add_order**
> String orders_add_order(new_order)

Agregar pedido



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrdersApi.new

new_order = SwaggerClient::NewOrder.new # NewOrder | 


begin
  #Agregar pedido
  result = api_instance.orders_add_order(new_order)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_add_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_order** | [**NewOrder**](NewOrder.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **orders_delete_order**
> orders_delete_order(id)

Eliminar pedido



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrdersApi.new

id = "id_example" # String | ID


begin
  #Eliminar pedido
  api_instance.orders_delete_order(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_delete_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| ID | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **orders_edit_order**
> orders_edit_order(order)

Editar pedido



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrdersApi.new

order = SwaggerClient::EditOrder.new # EditOrder | 


begin
  #Editar pedido
  api_instance.orders_edit_order(order)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_edit_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | [**EditOrder**](EditOrder.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



# **orders_get_by_id**
> OrderDetails orders_get_by_id(id)

Obtiene los detalles de un pedido



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrdersApi.new

id = "id_example" # String | ID


begin
  #Obtiene los detalles de un pedido
  result = api_instance.orders_get_by_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrdersApi->orders_get_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| ID | 

### Return type

[**OrderDetails**](OrderDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



