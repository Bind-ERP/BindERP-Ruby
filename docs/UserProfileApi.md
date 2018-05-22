# SwaggerClient::UserProfileApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_profile_get**](UserProfileApi.md#user_profile_get) | **GET** /api/UserProfile | Obtiene la lista de cuentas contables.


# **user_profile_get**
> UserProfile user_profile_get

Obtiene la lista de cuentas contables.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserProfileApi.new

begin
  #Obtiene la lista de cuentas contables.
  result = api_instance.user_profile_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserProfileApi->user_profile_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserProfile**](UserProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



