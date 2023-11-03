%dw 2.0
output application/json
---
[{
	(Id: attributes.uriParams.ID),
	(Name: payload.name) if(not isEmpty(payload.name)),
	(BillingState: payload.billing_state) if(not isEmpty(payload.billing_state)),
	(BillingCountry: payload.billing_country) if(not isEmpty(payload.billing_country)),
	(ShippingStreet: payload.shipping_address) if(not isEmpty(payload.shipping_address)),
	(ShippingCity: payload.shipping_city) if(not isEmpty(payload.shipping_city)),
	(ShippingCountry: payload.shipping_country) if(not isEmpty(payload.shipping_country)),
	(Phone: payload.phone as String) if(not isEmpty(payload.phone)),
	(AccountNumber: payload.account_number) if(not isEmpty(payload.account_number)),
	(sync_new_record_to_db__c: payload.sync_new_record_to_db) if(not isEmpty(payload.sync_new_record_to_db)),
	(sync_update_record_to_db__c: payload.sync_updated_record_to_db) if(not isEmpty(payload.sync_updated_record_to_db)),
	(external_id__c: payload.external_id) if(not isEmpty(payload.external_id__c))
}]