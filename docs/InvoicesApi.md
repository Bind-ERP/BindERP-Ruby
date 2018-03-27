# SwaggerClient::InvoicesApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**invoices_add_invoice**](InvoicesApi.md#invoices_add_invoice) | **POST** /api/Invoices | Agregar factura
[**invoices_add_payment**](InvoicesApi.md#invoices_add_payment) | **POST** /api/Invoices/Payment | Registrar pago a factura
[**invoices_delete_invoice**](InvoicesApi.md#invoices_delete_invoice) | **DELETE** /api/Invoices/{id} | Eliminar factura
[**invoices_get_by_id**](InvoicesApi.md#invoices_get_by_id) | **GET** /api/Invoices/{id} | Obtiene los detalles de una venta
[**invoices_get_by_number**](InvoicesApi.md#invoices_get_by_number) | **GET** /api/Invoices | Obtiene los detalles de una venta
[**invoices_get_pdf**](InvoicesApi.md#invoices_get_pdf) | **GET** /api/Invoices/{id}/pdf | Obtener el PDF de una venta
[**invoices_get_xml**](InvoicesApi.md#invoices_get_xml) | **GET** /api/Invoices/{id}/xml | Obtener el XML de una venta


# **invoices_add_invoice**
> String invoices_add_invoice(new_invoice)

Agregar factura



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

new_invoice = SwaggerClient::NewInvoice.new # NewInvoice | 


begin
  #Agregar factura
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

Registrar pago a factura



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

new_payment = SwaggerClient::NewPayment.new # NewPayment | 


begin
  #Registrar pago a factura
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



# **invoices_get_by_id**
> InvoiceDetails invoices_get_by_id(id)

Obtiene los detalles de una venta



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

id = "id_example" # String | ID


begin
  #Obtiene los detalles de una venta
  result = api_instance.invoices_get_by_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->invoices_get_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| ID | 

### Return type

[**InvoiceDetails**](InvoiceDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **invoices_get_by_number**
> InvoiceDetails invoices_get_by_number(number)

Obtiene los detalles de una venta



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

number = "number_example" # String | Serie y Número


begin
  #Obtiene los detalles de una venta
  result = api_instance.invoices_get_by_number(number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->invoices_get_by_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| Serie y Número | 

### Return type

[**InvoiceDetails**](InvoiceDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **invoices_get_pdf**
> Object invoices_get_pdf(id)

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

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



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



