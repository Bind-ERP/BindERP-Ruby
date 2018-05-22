# SwaggerClient::InvoicesApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**invoices_add_invoice**](InvoicesApi.md#invoices_add_invoice) | **POST** /api/Invoices | Agregar Venta
[**invoices_add_payment**](InvoicesApi.md#invoices_add_payment) | **POST** /api/Invoices/Payment | Registrar pago a venta
[**invoices_delete_invoice**](InvoicesApi.md#invoices_delete_invoice) | **DELETE** /api/Invoices/{id} | Eliminar factura
[**invoices_get**](InvoicesApi.md#invoices_get) | **GET** /api/Invoices | Obtiene la lista de ventas.
[**invoices_get_by_number**](InvoicesApi.md#invoices_get_by_number) | **GET** /api/Invoices/{idOrNumber} | Obtiene los detalles de una venta por número
[**invoices_get_pdf**](InvoicesApi.md#invoices_get_pdf) | **GET** /api/Invoices/{id}/pdf | Obtener el PDF de una venta
[**invoices_get_xml**](InvoicesApi.md#invoices_get_xml) | **GET** /api/Invoices/{id}/xml | Obtener el XML de una venta


# **invoices_add_invoice**
> String invoices_add_invoice(new_invoice)

Agregar Venta



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

new_invoice = SwaggerClient::NewInvoice.new # NewInvoice | 


begin
  #Agregar Venta
  result = api_instance.invoices_add_invoice(new_invoice)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->invoices_add_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_invoice** | [**NewInvoice**](NewInvoice.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **invoices_add_payment**
> invoices_add_payment(new_payment)

Registrar pago a venta



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

new_payment = SwaggerClient::NewPayment.new # NewPayment | 


begin
  #Registrar pago a venta
  api_instance.invoices_add_payment(new_payment)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->invoices_add_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_payment** | [**NewPayment**](NewPayment.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



# **invoices_delete_invoice**
> invoices_delete_invoice(id)

Eliminar factura



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = "id_example" # String | ID


begin
  #Eliminar factura
  api_instance.invoices_delete_invoice(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->invoices_delete_invoice: #{e}"
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



# **invoices_get**
> InvoiceListItemPage invoices_get(opts)

Obtiene la lista de ventas.

El filtro es opcional

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de ventas.
  result = api_instance.invoices_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->invoices_get: #{e}"
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

[**InvoiceListItemPage**](InvoiceListItemPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **invoices_get_by_number**
> InvoiceDetails invoices_get_by_number(id_or_number)

Obtiene los detalles de una venta por número



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id_or_number = "id_or_number_example" # String | 


begin
  #Obtiene los detalles de una venta por número
  result = api_instance.invoices_get_by_number(id_or_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->invoices_get_by_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_number** | **String**|  | 

### Return type

[**InvoiceDetails**](InvoiceDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **invoices_get_pdf**
> File invoices_get_pdf(id)

Obtener el PDF de una venta



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = "id_example" # String | ID


begin
  #Obtener el PDF de una venta
  result = api_instance.invoices_get_pdf(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->invoices_get_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| ID | 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **invoices_get_xml**
> String invoices_get_xml(id)

Obtener el XML de una venta



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = "id_example" # String | ID


begin
  #Obtener el XML de una venta
  result = api_instance.invoices_get_xml(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->invoices_get_xml: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| ID | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



