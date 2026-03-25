# # StationXml

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**example_message** | **string** | Example data, can be null | [optional]
**code** | **string** | Station code identifier | [optional]
**location** | **string** | Location name of the station | [optional]
**country** | **string** | Country code where the station is located | [optional]
**type** | **string** | Type of station | [optional]
**dcp_id** | **string** | DCP ID of the station | [optional]
**wmo** | **string** | WMO code of the station | [optional]
**xmt_int** | **int** | XMtInt value | [optional]
**lat** | **float** | Latitude of the station | [optional]
**lon** | **float** | Longitude of the station | [optional]
**har** | **int** | Har value, can be null | [optional]
**gloss_id** | **string** | GlossID value, can be null | [optional]
**ot12_code** | **string** | OT12Code value, can be null | [optional]
**utc_offset** | **int** | UTC Offset | [optional]
**operator_id** | **int** | Operator ID, can be null | [optional]
**status** | **string** | Status of the station | [optional]
**status_description** | **string** | Description of the station&#39;s status, can be null | [optional]
**localoperator** | **string** | Local operator of the station | [optional]
**performanceoperator1** | **string** | Performance operator 1, can be null | [optional]
**performanceoperator2** | **string** | Performance operator 2, can be null | [optional]
**performanceoperator3** | **string** | Performance operator 3, can be null | [optional]
**date_created** | **string** | Creation date of the station data | [optional]
**url** | **string** | URL for more information about the station, can be null | [optional]
**statsensor** | **int** | StatSensor ID | [optional]
**updatedata** | **string** | Update data frequency | [optional]
**timestampdata** | **string** | Timestamp data | [optional]
**timestampupdate** | **string** | Timestamp update | [optional]
**transmittype** | **string** | Type of transmission | [optional]
**countryname** | **string** | Country name | [optional]
**totmess** | **int** | Total messages | [optional]
**expectedmess** | **int** | Expected messages | [optional]
**sensor** | [**\SLSMF\Client\Model\StationXmlSensor**](StationXmlSensor.md) |  | [optional]
**associated_stations** | [**\SLSMF\Client\Model\StationXmlAssociatedStationsInner[]**](StationXmlAssociatedStationsInner.md) | associated station | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
