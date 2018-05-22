# SwaggerClient::AccountsApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accounts_add_account**](AccountsApi.md#accounts_add_account) | **POST** /api/Accounts | Agregar Cuenta Contable
[**accounts_delete_account**](AccountsApi.md#accounts_delete_account) | **DELETE** /api/Accounts/{id} | Borrar Cuenta Contable
[**accounts_get**](AccountsApi.md#accounts_get) | **GET** /api/Accounts | Obtiene la lista de cuentas contables.
[**accounts_get_account_categories**](AccountsApi.md#accounts_get_account_categories) | **GET** /api/AccountCategories | Obtiene las categorías de cuentas contables.


# **accounts_add_account**
> String accounts_add_account(new_account)

Agregar Cuenta Contable



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

new_account = SwaggerClient::NewAccount.new # NewAccount | 


begin
  #Agregar Cuenta Contable
  result = api_instance.accounts_add_account(new_account)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_add_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_account** | [**NewAccount**](NewAccount.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **accounts_delete_account**
> accounts_delete_account(id, opts)

Borrar Cuenta Contable



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

id = "id_example" # String | 

opts = { 
  replacement_id: "replacement_id_example" # String | 
}

begin
  #Borrar Cuenta Contable
  api_instance.accounts_delete_account(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_delete_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **replacement_id** | [**String**](.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **accounts_get**
> AccountPage accounts_get(opts)

Obtiene la lista de cuentas contables.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de cuentas contables.
  result = api_instance.accounts_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_get: #{e}"
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

[**AccountPage**](AccountPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **accounts_get_account_categories**
> AccountCategories accounts_get_account_categories

Obtiene las categorías de cuentas contables.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

begin
  #Obtiene las categorías de cuentas contables.
  result = api_instance.accounts_get_account_categories
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_get_account_categories: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountCategories**](AccountCategories.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



