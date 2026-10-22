# # Station

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
**performance_operator1** | **string** | Performance operator 1 | [optional]
**performance_operator1_id** | **int** | ID of performance operator 1 | [optional]
**performance_operator1_link** | **string** | Link to the performance operator 1 | [optional]
**performance_operator2** | **string** | Performance operator 2 | [optional]
**performance_operator2_id** | **int** | ID of performance operator 2 | [optional]
**performance_operator2_link** | **string** | Link to the performance operator 2 | [optional]
**performance_operator3** | **string** | Performance operator 3 | [optional]
**performance_operator3_id** | **int** | ID of performance operator 3 | [optional]
**performance_operator3_link** | **string** | Link to the performance operator 3 | [optional]
**created_at** | **string** | Creation date of the record | [optional]
**data_status** | **string** | Data status: &#39;on-time&#39; if the last observation is within 3 times the transmit interval, &#39;outdated&#39; otherwise, or &#39;NA&#39; when no data is available. | [optional]
**data_status_code** | **int** | Data status code: 1 &#x3D; on-time, 2 &#x3D; outdated, 3 &#x3D; NA. | [optional]
**last_observation_time** | **string** | Last observation time | [optional]
**last_observation_transmission** | **string** | Last update time | [optional]
**last_observation_value** | **float** | Last recorded value | [optional]
**last_observation_sensor_type** | **string** | Sensor type of the last recorded value | [optional]
**secondary_of** | **string** | Link to main station | [optional]
**associated_stations** | [**\SLSMF\Client\Model\StationAssociatedStationsInner[]**](StationAssociatedStationsInner.md) | Link to main station | [optional]
**sensors** | [**\SLSMF\Client\Model\StationSensorsInner[]**](StationSensorsInner.md) | Sensor information for the station | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
