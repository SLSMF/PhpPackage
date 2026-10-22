# # StationPerformance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**station_code** | **string** | Station code identifier |
**station_link** | **string** | Link to the station | [optional]
**operator_status_code** | **int** | Operational status code (1&#x3D;Operational, 2&#x3D;Maintenance, 3&#x3D;In test, 4&#x3D;Incorrect data, 5&#x3D;Down) |
**operator_status_description** | **string** | Description of the operational status | [optional]
**local_operator** | **string** | Name of local operator | [optional]
**performance_operator1** | **string** | Primary performance operator name | [optional]
**performance_operator2** | **string** | Secondary performance operator name | [optional]
**performance_operator3** | **string** | Tertiary performance operator name | [optional]
**messages_received_24h** | **int** | Actual number of daily messages | [optional]
**messages_expected_24h** | **int** | Expected number of daily messages | [optional]
**observations_received_1h** | **int** | Actual number of rolling hourly observations | [optional]
**observations_expected_1h** | **int** | Expected number of rolling hourly observations | [optional]
**observations_received_24h** | **int** | Actual number of rolling daily observations | [optional]
**observations_expected_24h** | **int** | Expected number of rolling daily observations | [optional]
**observations_received_7d** | **int** | Actual number of observations of the last 7 calendar days | [optional]
**observations_expected_7d** | **int** | Expected number of observations of the last 7 calendar days | [optional]
**observations_received_30d** | **int** | Actual number of observations of the last 30 calendar days | [optional]
**observations_expected_30d** | **int** | Expected number of observations of the last 30 calendar days | [optional]
**avg_observation_to_db_latency_1h** | **float** | Average latency from observation to database entry in minutes. Data is the last rolling hour of sensor with latest observation | [optional]
**avg_observation_to_db_latency_24h** | **float** | Average latency from observation to database entry in minutes. Data is the last rolling 24 hours of sensor with latest observation | [optional]
**best_performing_sl_sensor_24h** | **string** | Sea level measuring sensor with highest 24h ratio | [optional]
**sensors** | [**\SLSMF\\Client\Model\StationPerformanceSensorsInner[]**](StationPerformanceSensorsInner.md) | Sensor information for the station |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
