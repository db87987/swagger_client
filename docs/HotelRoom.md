# SwaggerClient::HotelRoom

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**booking_code** | **String** | The booking code identifies a product at the hotel. It can be used to book a room. | 
**room_type_code** | **String** | A 3-letter code to identify a specific room type. | [optional] 
**rate_plan_code** | **String** | A 3 letter code to designate different rates base on traveler type. | [optional] 
**total_amount** | [**Amount**](Amount.md) | The total price of staying in this room from the given check-in date to the given check-out date | [optional] 
**rates** | [**Array&lt;PeriodRate&gt;**](PeriodRate.md) | The total price of staying in this room from the given check-in date to the given check-out date | [optional] 
**descriptions** | **Array&lt;String&gt;** | An array of description strings describing room and rate types features | [optional] 
**room_type_info** | [**RoomInfo**](RoomInfo.md) |  | [optional] 
**rate_type_code** | **String** | The unique rate code used by the hotel chain to price this room&#39;s rate | [optional] 


