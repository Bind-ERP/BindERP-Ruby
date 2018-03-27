# SwaggerClient::WebHooksApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**web_hooks_add_web_hook_subscriptions**](WebHooksApi.md#web_hooks_add_web_hook_subscriptions) | **POST** /api/WebHookSubscriptions | Suscribirse a un WebHook
[**web_hooks_delete_web_hook_subscriptio_by_id**](WebHooksApi.md#web_hooks_delete_web_hook_subscriptio_by_id) | **DELETE** /api/WebHookSubscriptions | Borrar suscripción a WebHook
[**web_hooks_edit_web_hook_subscription**](WebHooksApi.md#web_hooks_edit_web_hook_subscription) | **PUT** /api/WebHookSubscriptions | Editar suscripción a WebHook
[**web_hooks_get_web_hook_sample_data**](WebHooksApi.md#web_hooks_get_web_hook_sample_data) | **GET** /api/WebHooks/{eventID} | Obtiene un ejemplo del modelo de datos que envía el WebHook.
[**web_hooks_get_web_hook_subscriptions**](WebHooksApi.md#web_hooks_get_web_hook_subscriptions) | **GET** /api/WebHookSubscriptions | Obtiene la lista de su suscripciones a WebHooks
[**web_hooks_get_web_hooks**](WebHooksApi.md#web_hooks_get_web_hooks) | **GET** /api/WebHooks | Obtiene la lista de WebHooks disponibles.


# **web_hooks_add_web_hook_subscriptions**
> Object web_hooks_add_web_hook_subscriptions(web_hook_subscription)

Suscribirse a un WebHook



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WebHooksApi.new

web_hook_subscription = SwaggerClient::NewWebHookSubscription.new # NewWebHookSubscription | 


begin
  #Suscribirse a un WebHook
  result = api_instance.web_hooks_add_web_hook_subscriptions(web_hook_subscription)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebHooksApi->web_hooks_add_web_hook_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **web_hook_subscription** | [**NewWebHookSubscription**](NewWebHookSubscription.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **web_hooks_delete_web_hook_subscriptio_by_id**
> web_hooks_delete_web_hook_subscriptio_by_id(id)

Borrar suscripción a WebHook



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WebHooksApi.new

id = "id_example" # String | 


begin
  #Borrar suscripción a WebHook
  api_instance.web_hooks_delete_web_hook_subscriptio_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebHooksApi->web_hooks_delete_web_hook_subscriptio_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **web_hooks_edit_web_hook_subscription**
> web_hooks_edit_web_hook_subscription(web_hook_subscription)

Editar suscripción a WebHook



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WebHooksApi.new

web_hook_subscription = SwaggerClient::NewWebHookSubscription.new # NewWebHookSubscription | 


begin
  #Editar suscripción a WebHook
  api_instance.web_hooks_edit_web_hook_subscription(web_hook_subscription)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebHooksApi->web_hooks_edit_web_hook_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **web_hook_subscription** | [**NewWebHookSubscription**](NewWebHookSubscription.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



# **web_hooks_get_web_hook_sample_data**
> Object web_hooks_get_web_hook_sample_data(event_id)

Obtiene un ejemplo del modelo de datos que envía el WebHook.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WebHooksApi.new

event_id = "event_id_example" # String | 


begin
  #Obtiene un ejemplo del modelo de datos que envía el WebHook.
  result = api_instance.web_hooks_get_web_hook_sample_data(event_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebHooksApi->web_hooks_get_web_hook_sample_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_id** | **String**|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **web_hooks_get_web_hook_subscriptions**
> WebHookSubscriptionPage web_hooks_get_web_hook_subscriptions(opts)

Obtiene la lista de su suscripciones a WebHooks



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WebHooksApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de su suscripciones a WebHooks
  result = api_instance.web_hooks_get_web_hook_subscriptions(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebHooksApi->web_hooks_get_web_hook_subscriptions: #{e}"
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

[**WebHookSubscriptionPage**](WebHookSubscriptionPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **web_hooks_get_web_hooks**
> WebHookPage web_hooks_get_web_hooks(opts)

Obtiene la lista de WebHooks disponibles.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WebHooksApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de WebHooks disponibles.
  result = api_instance.web_hooks_get_web_hooks(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebHooksApi->web_hooks_get_web_hooks: #{e}"
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

[**WebHookPage**](WebHookPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



