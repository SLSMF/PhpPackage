# # StationMessageInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datastream** | **string** | datastream of station, possible returns are: gts, web, bgan, ftp, socket, email | [optional]
**datastream_type** | **string** | datastream of station | [optional]
**wmo** | **string** | WMO header | [optional]
**locator_id** | **string** | Locator ID of the station | [optional]
**nmc** | **string** | NMC (options: kmi, meteo_france) | [optional]
**parser_status** | **string** | Status of the GTS parser | [optional]
**parser_status_code** | **int** | Status code of GTS parser, options: 1 &#x3D; success; at least one station matched and data was parsed; 100 &#x3D; no/invalid WMO header; 101 &#x3D; wrong parser for this WMO; 200 &#x3D; WMO unknown / no metadata for that station type; 300 &#x3D; GOES payload/DCP identification missing; 301 &#x3D; malformed DCP_ID (not 8 chars); 400 &#x3D; encoded payload decoded to nothing / failed decode; 401 &#x3D; file/header does not match expected binary/OTT format; 500 &#x3D; CREX detected, but not a supported tide-series format; 501 &#x3D; CREX/DART message recognized but no usable stations found / corrupt data; 502 &#x3D; DART event mode message ignored (msg nr &lt;&#x3D; 1); 503 &#x3D; DART message scrambled/unparseable; 600 &#x3D; parser ran, but no metadata/station match was found | [optional]
**arrived_at** | **string** | Timestamp of when the message was received | [optional]
**message_time** | **string** | Message timestamp in the format &#39;YYYY-MM-DD HH:MM:SS&#39; | [optional]
**message** | **string** | Message content in raw string format | [optional]
**data** | **string** | Tab-separated data values with timestamps | [optional]
**stations** | [**\SLSMF\Client\Model\StationMessageInnerStationsInner[]**](StationMessageInnerStationsInner.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
