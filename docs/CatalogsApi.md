# SwaggerClient::CatalogsApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**catalogs_get_banks**](CatalogsApi.md#catalogs_get_banks) | **GET** /api/Banks | Obtiene la lista de bancos.
[**catalogs_get_categories**](CatalogsApi.md#catalogs_get_categories) | **GET** /api/Categories | Obtiene la lista de Categorias.
[**catalogs_get_currencies**](CatalogsApi.md#catalogs_get_currencies) | **GET** /api/Currencies | Obtiene la lista de monedas.
[**catalogs_get_locations**](CatalogsApi.md#catalogs_get_locations) | **GET** /api/Locations | Obtiene la lista de sucursales.
[**catalogs_get_price_lists**](CatalogsApi.md#catalogs_get_price_lists) | **GET** /api/PriceLists | Obtiene la lista de precios.
[**catalogs_get_series**](CatalogsApi.md#catalogs_get_series) | **GET** /api/Series | Obtiene la lista de Series.
[**catalogs_get_users**](CatalogsApi.md#catalogs_get_users) | **GET** /api/Users | Obtiene la lista de usuarios.


# **catalogs_get_banks**
> BankPage catalogs_get_banks(opts)

Obtiene la lista de bancos.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de bancos.
  result = api_instance.catalogs_get_banks(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogsApi->catalogs_get_banks: #{e}"
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

[**BankPage**](BankPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **catalogs_get_categories**
> Array&lt;Category1&gt; catalogs_get_categories

Obtiene la lista de Categorias.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogsApi.new

begin
  #Obtiene la lista de Categorias.
  result = api_instance.catalogs_get_categories
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogsApi->catalogs_get_categories: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Category1&gt;**](Category1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **catalogs_get_currencies**
> CurrencyPage catalogs_get_currencies(opts)

Obtiene la lista de monedas.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de monedas.
  result = api_instance.catalogs_get_currencies(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogsApi->catalogs_get_currencies: #{e}"
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

[**CurrencyPage**](CurrencyPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **catalogs_get_locations**
> LocationPage catalogs_get_locations(opts)

Obtiene la lista de sucursales.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de sucursales.
  result = api_instance.catalogs_get_locations(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogsApi->catalogs_get_locations: #{e}"
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

[**LocationPage**](LocationPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **catalogs_get_price_lists**
> PriceListPage catalogs_get_price_lists(opts)

Obtiene la lista de precios.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de precios.
  result = api_instance.catalogs_get_price_lists(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogsApi->catalogs_get_price_lists: #{e}"
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

[**PriceListPage**](PriceListPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **catalogs_get_series**
> Array&lt;Series&gt; catalogs_get_series(doc_type)

Obtiene la lista de Series.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogsApi.new

doc_type = 56 # Integer | 


begin
  #Obtiene la lista de Series.
  result = api_instance.catalogs_get_series(doc_type)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogsApi->catalogs_get_series: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **doc_type** | **Integer**|  | 

### Return type

[**Array&lt;Series&gt;**](Series.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **catalogs_get_users**
> UserPage catalogs_get_users(opts)

Obtiene la lista de usuarios.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de usuarios.
  result = api_instance.catalogs_get_users(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogsApi->catalogs_get_users: #{e}"
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

[**UserPage**](UserPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



