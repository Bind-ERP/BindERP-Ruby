# SwaggerClient::ProductsApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**products_add_product**](ProductsApi.md#products_add_product) | **POST** /api/Products | Agregar Producto
[**products_delete_by_id**](ProductsApi.md#products_delete_by_id) | **DELETE** /api/Products/{id} | Borrar Producto
[**products_edit_product**](ProductsApi.md#products_edit_product) | **PUT** /api/Products | Editar Producto
[**products_get**](ProductsApi.md#products_get) | **GET** /api/Products | Obtiene la lista de productos.
[**products_get_detail**](ProductsApi.md#products_get_detail) | **GET** /api/Products/{id} | Obtiene los detalles de un producto.
[**products_get_image**](ProductsApi.md#products_get_image) | **GET** /api/Products/{id}/image | Obtiene la imagen del producto.


# **products_add_product**
> String products_add_product(new_product)

Agregar Producto



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

new_product = SwaggerClient::NewProduct.new # NewProduct | 


begin
  #Agregar Producto
  result = api_instance.products_add_product(new_product)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->products_add_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_product** | [**NewProduct**](NewProduct.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **products_delete_by_id**
> products_delete_by_id(id)

Borrar Producto



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

id = "id_example" # String | 


begin
  #Borrar Producto
  api_instance.products_delete_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->products_delete_by_id: #{e}"
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



# **products_edit_product**
> products_edit_product(product)

Editar Producto



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

product = SwaggerClient::EditProduct.new # EditProduct | 


begin
  #Editar Producto
  api_instance.products_edit_product(product)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->products_edit_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | [**EditProduct**](EditProduct.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



# **products_get**
> ProductPage products_get(opts)

Obtiene la lista de productos.

El filtro es opcional

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de productos.
  result = api_instance.products_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->products_get: #{e}"
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

[**ProductPage**](ProductPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **products_get_detail**
> ProductDetails products_get_detail(id)

Obtiene los detalles de un producto.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

id = "id_example" # String | 


begin
  #Obtiene los detalles de un producto.
  result = api_instance.products_get_detail(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->products_get_detail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**ProductDetails**](ProductDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **products_get_image**
> String products_get_image(id)

Obtiene la imagen del producto.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProductsApi.new

id = "id_example" # String | 


begin
  #Obtiene la imagen del producto.
  result = api_instance.products_get_image(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->products_get_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



