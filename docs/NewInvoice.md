# SwaggerClient::NewInvoice

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency_id** | **String** |  | 
**exchange_rate** | **Float** |  | [optional] 
**isr_ret_rate** | **Float** |  | [optional] 
**vat_ret_rate** | **Float** |  | [optional] 
**client_id** | **String** |  | [optional] 
**location_id** | **String** |  | [optional] 
**comments** | **String** |  | [optional] 
**vat_rate** | **Float** |  | [optional] 
**discount_type** | **Integer** |  | [optional] 
**discount_amount** | **Float** |  | [optional] 
**products** | [**Array&lt;NewInvoiceProduct&gt;**](NewInvoiceProduct.md) |  | [optional] 
**services** | [**Array&lt;NewInvoiceService&gt;**](NewInvoiceService.md) |  | [optional] 
**emails** | **Array&lt;String&gt;** |  | [optional] 
**warehouse_id** | **String** |  | [optional] 
**purchase_order** | **String** |  | [optional] 
**credit_days** | **Integer** |  | [optional] 
**is_fiscal_invoice** | **BOOLEAN** |  | [optional] 
**show_ieps** | **BOOLEAN** |  | [optional] 
**number** | **Integer** |  | [optional] 
**cfdi_use** | **Integer** |  | [optional] 
**account** | **String** |  | [optional] 
**payments** | [**Array&lt;NewInvoicePayment&gt;**](NewInvoicePayment.md) |  | [optional] 
**invoice_date** | **DateTime** |  | 
**price_list_id** | **String** |  | 
**serie** | **String** |  | [optional] 


