# # StationPerformanceSensorsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sensor_id** | **int** | Sensor ID |
**sensor_type** | **string** | Type of sensor used |
**sample_interval** | **float** | Sample interval in minutes (rate) |
**samples_per_message** | **int** | Number of observations in the GTS message |
**last_observation_transmission** | **string** | Last update time | [optional]
**last_observation_time** | **string** | Last observation time | [optional]
**last_observation_value** | **float** | Last recorded value | [optional]
**observations_received_1h** | **int** | Actual number of observations of the last rolling hour | [optional]
**observations_expected_1h** | **int** | Expected number of observations of the last rolling hour | [optional]
**observations_received_24h** | **int** | Actual number of observations of the last 24 rolling hours | [optional]
**observations_expected_24h** | **int** | Expected number of observations of the last 24 rolling hours | [optional]
**observations_received_7d** | **int** | Actual number of observations of the last 7 calendar days | [optional]
**observations_expected_7d** | **int** | Expected number of observations of the last 7 calendar days | [optional]
**observations_received_30d** | **int** | Actual number of observations of the last 30 calendar days | [optional]
**observations_expected_30d** | **int** | Expected number of observations of the last 30 calendar days | [optional]
**avg_observation_to_db_latency_1h** | **float** | Average latency from observation to database entry in minutes. Data is the last rolling hour of sensor with latest observation | [optional]
**avg_observation_to_db_latency_24h** | **float** | Average latency from observation to database entry in minutes. Data is the last 24 hours of sensor with latest observation | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
