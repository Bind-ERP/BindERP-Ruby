# SwaggerClient::AccountingJournalsApi

All URIs are relative to *http://api.bind.com.mx*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accounting_journals_add_accounting_journal**](AccountingJournalsApi.md#accounting_journals_add_accounting_journal) | **POST** /api/AccountingJournals | Agregar póliza contable
[**accounting_journals_delete_accounting_journal**](AccountingJournalsApi.md#accounting_journals_delete_accounting_journal) | **DELETE** /api/AccountingJournals | Eliminar póliza contable
[**accounting_journals_edit_accounting_journal**](AccountingJournalsApi.md#accounting_journals_edit_accounting_journal) | **PUT** /api/AccountingJournals | Editar póliza contable
[**accounting_journals_get**](AccountingJournalsApi.md#accounting_journals_get) | **GET** /api/AccountingJournals | Obtiene la lista de pólizas contables.


# **accounting_journals_add_accounting_journal**
> String accounting_journals_add_accounting_journal(new_accounting_journal)

Agregar póliza contable



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingJournalsApi.new

new_accounting_journal = SwaggerClient::NewAccountingJournal.new # NewAccountingJournal | 


begin
  #Agregar póliza contable
  result = api_instance.accounting_journals_add_accounting_journal(new_accounting_journal)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingJournalsApi->accounting_journals_add_accounting_journal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_accounting_journal** | [**NewAccountingJournal**](NewAccountingJournal.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **accounting_journals_delete_accounting_journal**
> accounting_journals_delete_accounting_journal(id_list)

Eliminar póliza contable



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingJournalsApi.new

id_list = [SwaggerClient::Array<String>.new] # Array<String> | 


begin
  #Eliminar póliza contable
  api_instance.accounting_journals_delete_accounting_journal(id_list)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingJournalsApi->accounting_journals_delete_accounting_journal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_list** | **Array&lt;String&gt;**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: Not defined



# **accounting_journals_edit_accounting_journal**
> String accounting_journals_edit_accounting_journal(accounting_journal)

Editar póliza contable



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingJournalsApi.new

accounting_journal = SwaggerClient::EditAccountingJournal.new # EditAccountingJournal | 


begin
  #Editar póliza contable
  result = api_instance.accounting_journals_edit_accounting_journal(accounting_journal)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingJournalsApi->accounting_journals_edit_accounting_journal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accounting_journal** | [**EditAccountingJournal**](EditAccountingJournal.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **accounting_journals_get**
> AccountingJournalPage accounting_journals_get(opts)

Obtiene la lista de pólizas contables.



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountingJournalsApi.new

opts = { 
  filter: "filter_example", # String | Filters the results, based on a Boolean condition.
  orderby: "orderby_example", # String | Sorts the results.
  top: 56, # Integer | Returns only the first n results.
  skip: 56 # Integer | Skips the first n results.
}

begin
  #Obtiene la lista de pólizas contables.
  result = api_instance.accounting_journals_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountingJournalsApi->accounting_journals_get: #{e}"
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

[**AccountingJournalPage**](AccountingJournalPage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



