# SwaggerClient::BankAccountsApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bank_accounts_get**](BankAccountsApi.md#bank_accounts_get) | **GET** /api/BankAccounts | Obtiene la lista de cuentas bancarias.


# **bank_accounts_get**
> BankAccountPage bank_accounts_get(opts)

Obtiene la lista de cuentas bancarias.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BankAccountsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de cuentas bancarias.
  result = api_instance.bank_accounts_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BankAccountsApi->bank_accounts_get: #{e}"
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

[**BankAccountPage**](BankAccountPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



