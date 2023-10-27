%dw 2.0
output application/java
---
[{
	Name: payload.name,
	BillingState: payload.billing_state as String,
	BillingCountry: payload.billing_country as String,
	ShippingStreet: payload.shipping_address,
	ShippingCity: payload.shipping_city,
	ShippingCountry: (payload.shipping_country default "") ++ payload.shipping_country,
	Phone: (payload.phone as String default "") ++ payload.phone as String,
	AccountNumber: payload.account_number as String,
	AnnualRevenue: payload.annual_revenue,
	NumberOfEmployees: payload.no_of_employees,
	sync_new_record_to_db__c: payload.sync_new_record_to_db__c,
	external_id__c: payload.external_id
}]