# SwaggerClient::ActivitiesApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activities_add_activity**](ActivitiesApi.md#activities_add_activity) | **POST** /api/Activities | Agregar actividad


# **activities_add_activity**
> activities_add_activity(new_activity)

Agregar actividad



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ActivitiesApi.new

new_activity = SwaggerClient::NewActivity.new # NewActivity | 


begin
  #Agregar actividad
  api_instance.activities_add_activity(new_activity)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ActivitiesApi->activities_add_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_activity** | [**NewActivity**](NewActivity.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



