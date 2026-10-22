# # StationsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**station_code** | **string** | Station code identifier |
**location** | **string** | Location name |
**country** | **string** | Country name | [optional]
**country_code** | **string** | Country ISO 3166-1 alpha-3 code | [optional]
**datastream** | **string** | datastream of station, possible returns are: gts, web, bgan, ftp, socket, email |
**datastream_type** | **string** | datastream of station | [optional]
**dcp_id** | **string** | Data Collection Platform identifier | [optional]
**gloss_id** | **string** | Glossary identifier | [optional]
**gloss_link** | **string** | Link to the glossary entry | [optional]
**ot12_code** | **string** | OT12 code | [optional]
**external_code** | **string** | external station code for this station (needed for web datastreams). See SSC catalog codes in https://www.ioc-sealevelmonitoring.org/ssc/ | [optional]
**wmo** | **string** | WMO header | [optional]
**transmit_interval** | **int** | Transmission interval in minutes | [optional]
**latitude** | **float** | Latitude of the station |
**longitude** | **float** | Longitude of the station |
**harmonic** | **int** | Harmonic value | [optional]
**utc_offset** | **int** | UTC offset in hours |
**operator_status** | **string** | Operational status | [optional]
**operator_status_code** | **int** | Operational status code (1&#x3D;Operational, 2&#x3D;Maintenance, 3&#x3D;In test, 4&#x3D;Incorrect data, 5&#x3D;Down) |
**operator** | **string** | Local operator of the station | [optional]
**operator_id** | **int** | Local operator ID | [optional]
**operator_link** | **string** | Link to the local operator | [optional]
**created_at** | **string** | Creation date of the record | [optional]
**data_status** | **string** | Data is on-time if last observation is within 3 times the transmit interval, otherwise it is outdated. If no data is available, it is NA. | [optional]
**data_status_code** | **int** | Data is on-time (&#x3D;1) if last observation is within 3 times the transmit interval, otherwise it is outdated (&#x3D;2). If no data is available, it is NA. (&#x3D;3) | [optional]
**last_observation_time** | **string** | Last observation time | [optional]
**last_observation_transmission** | **string** | Last update time | [optional]
**last_observation_value** | **float** | Last recorded value | [optional]
**last_observation_sensor_type** | **string** | Sensor type of the last recorded value | [optional]
**secondary_of** | **string** | Link to main station | [optional]
**associated_stations** | [**\SLSMF\Client\Model\StationsInnerAssociatedStationsInner[]**](StationsInnerAssociatedStationsInner.md) | Link to main station | [optional]
**sensors** | [**\SLSMF\Client\Model\StationsInnerSensorsInner[]**](StationsInnerSensorsInner.md) | Sensor information for the station | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
