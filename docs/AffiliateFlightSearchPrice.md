# SwaggerClient::AffiliateFlightSearchPrice

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **String** | The &lt;a href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_4217\&quot;&gt;currency&lt;/a&gt; code applicable to this fare | 
**total_price** | **String** | The total price for all the requested passengers for this flight | 
**price_per_adult** | [**Fare**](Fare.md) | The per-passenger fare for each adult on this flight | 
**price_per_child** | [**Fare**](Fare.md) | The per-passenger fare for each child on this flight | [optional] 
**price_per_infant** | [**Fare**](Fare.md) | The per-passenger fare for each infant on this flight | [optional] 
**restrictions** | [**FareRestrictions**](FareRestrictions.md) | The restrictions associated with this fare | 


