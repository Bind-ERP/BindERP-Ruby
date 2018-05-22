# SwaggerClient::NewInvoice

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency_id** | **String** |  | 
**client_id** | **String** |  | 
**location_id** | **String** |  | 
**warehouse_id** | **String** |  | 
**cfdi_use** | **Integer** |  | 
**invoice_date** | **DateTime** |  | 
**price_list_id** | **String** |  | 
**exchange_rate** | **Float** |  | [optional] 
**isr_ret_rate** | **Float** |  | [optional] 
**vat_ret_rate** | **Float** |  | [optional] 
**comments** | **String** |  | [optional] 
**vat_rate** | **Float** |  | [optional] 
**discount_type** | **Integer** |  | [optional] 
**discount_amount** | **Float** |  | [optional] 
**products** | [**Array&lt;NewInvoiceProduct&gt;**](NewInvoiceProduct.md) |  | [optional] 
**services** | [**Array&lt;NewInvoiceService&gt;**](NewInvoiceService.md) |  | [optional] 
**emails** | **Array&lt;String&gt;** |  | [optional] 
**purchase_order** | **String** |  | [optional] 
**credit_days** | **Integer** |  | [optional] 
**is_fiscal_invoice** | **BOOLEAN** |  | [optional] 
**show_ieps** | **BOOLEAN** |  | [optional] 
**number** | **Integer** |  | [optional] 
**account** | **String** |  | [optional] 
**payments** | [**Array&lt;NewInvoicePayment&gt;**](NewInvoicePayment.md) |  | [optional] 
**serie** | **String** |  | [optional] 


