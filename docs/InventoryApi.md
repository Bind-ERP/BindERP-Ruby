# SwaggerClient::InventoryApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_add_inventory_adjustment**](InventoryApi.md#inventory_add_inventory_adjustment) | **POST** /api/Inventory | Agregar ajuste de inventario.
[**inventory_get_inventory_by_warehouse_id**](InventoryApi.md#inventory_get_inventory_by_warehouse_id) | **GET** /api/Inventory | Obtener inventario por almacén.


# **inventory_add_inventory_adjustment**
> inventory_add_inventory_adjustment(new_adjustment)

Agregar ajuste de inventario.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InventoryApi.new

new_adjustment = SwaggerClient::NewInventoryAdjustment.new # NewInventoryAdjustment | 


begin
  #Agregar ajuste de inventario.
  api_instance.inventory_add_inventory_adjustment(new_adjustment)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InventoryApi->inventory_add_inventory_adjustment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_adjustment** | [**NewInventoryAdjustment**](NewInventoryAdjustment.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



# **inventory_get_inventory_by_warehouse_id**
> InventorytPage inventory_get_inventory_by_warehouse_id(warehouse_id, opts)

Obtener inventario por almacén.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InventoryApi.new

warehouse_id = "warehouse_id_example" # String | 

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtener inventario por almacén.
  result = api_instance.inventory_get_inventory_by_warehouse_id(warehouse_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InventoryApi->inventory_get_inventory_by_warehouse_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | [**String**](.md)|  | 
 **filter** | **String**| Filters the results, based on a Boolean condition. | [optional] 
 **orderby** | **String**| Sorts the results. | [optional] 
 **top** | **Integer**| Returns only the first n results. | [optional] 
 **skip** | **Integer**| Skips the first n results. | [optional] 

### Return type

[**InventorytPage**](InventorytPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



