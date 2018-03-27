# SwaggerClient::ProspectsApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**prospects_add_prospect**](ProspectsApi.md#prospects_add_prospect) | **POST** /api/Prospects | Agregar Prospecto
[**prospects_delete_by_id**](ProspectsApi.md#prospects_delete_by_id) | **DELETE** /api/Prospects/{id} | Borrar Prospecto
[**prospects_edit_client**](ProspectsApi.md#prospects_edit_client) | **PUT** /api/Prospects | Editar Prospecto
[**prospects_get**](ProspectsApi.md#prospects_get) | **GET** /api/Prospects/{id} | Obtiene los detalles de un prospecto.
[**prospects_get_prospects**](ProspectsApi.md#prospects_get_prospects) | **GET** /api/Prospects | Obtiene la lista de prospectos.


# **prospects_add_prospect**
> String prospects_add_prospect(new_prospect)

Agregar Prospecto



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProspectsApi.new

new_prospect = SwaggerClient::Prospect.new # Prospect | 


begin
  #Agregar Prospecto
  result = api_instance.prospects_add_prospect(new_prospect)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProspectsApi->prospects_add_prospect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_prospect** | [**Prospect**](Prospect.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **prospects_delete_by_id**
> prospects_delete_by_id(id)

Borrar Prospecto



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProspectsApi.new

id = "id_example" # String | 


begin
  #Borrar Prospecto
  api_instance.prospects_delete_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProspectsApi->prospects_delete_by_id: #{e}"
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



# **prospects_edit_client**
> prospects_edit_client(prospect)

Editar Prospecto



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProspectsApi.new

prospect = SwaggerClient::Prospect.new # Prospect | 


begin
  #Editar Prospecto
  api_instance.prospects_edit_client(prospect)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProspectsApi->prospects_edit_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prospect** | [**Prospect**](Prospect.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



# **prospects_get**
> ProspectDetails prospects_get(id)

Obtiene los detalles de un prospecto.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProspectsApi.new

id = "id_example" # String | 


begin
  #Obtiene los detalles de un prospecto.
  result = api_instance.prospects_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProspectsApi->prospects_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**ProspectDetails**](ProspectDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **prospects_get_prospects**
> ProspectListItemPage prospects_get_prospects(opts)

Obtiene la lista de prospectos.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProspectsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de prospectos.
  result = api_instance.prospects_get_prospects(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProspectsApi->prospects_get_prospects: #{e}"
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

[**ProspectListItemPage**](ProspectListItemPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



