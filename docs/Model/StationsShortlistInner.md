# # StationsShortlistInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**station_code** | **string** | Station code identifier |
**location** | **string** | Location name of the station |
**country_code** | **string** |  | [optional]
**datastream** | **string** | datastream of station, possible returns are: gts, web, bgan, ftp, socket, email | [optional]
**datastream_type** | **string** | datastream of station | [optional]
**operator_status** | **string** | Operational status | [optional]
**data_status** | **string** | Data is on-time if last observation is within 3 times the transmit interval, otherwise it is outdated. If no data is available, it is NA. | [optional]
**data_status_code** | **int** | Data is on-time (&#x3D;1) if last observation is within 3 times the transmit interval, otherwise it is outdated (&#x3D;2). If no data is available, it is NA. (&#x3D;3) | [optional]
**last_observation_time** | **string** | Last recorded time at the station |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
