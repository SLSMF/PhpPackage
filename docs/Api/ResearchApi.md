# SLSMF\Client\ResearchApi

All URIs are relative to http://devapi.ioc-sealevelmonitoring.org, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getResearchMetadata()**](ResearchApi.md#getResearchMetadata) | **GET** /v2.1/research/metadata/{sensor_id} | Retrieve daily metadata records from the research collection. |
| [**getStationResearchData()**](ResearchApi.md#getStationResearchData) | **GET** /v2.1/research/stations/{station_code}/sensors/{sensor}/data | Retrieve quality controlled data for a station with a maximum of 365 days in one request. By default 7 days are retrieved. More documentation on this API can be found on https://github.com/SLSMF/API-Documentation |
| [**getStationSensorConstituents()**](ResearchApi.md#getStationSensorConstituents) | **GET** /v2.1/research/stations/{station_code}/sensors/{sensor}/tidal-harmonics | **Experimental** Retrieve tide model data of sensor. |
| [**getStationSensorPredictions()**](ResearchApi.md#getStationSensorPredictions) | **GET** /v2.1/research/stations/{station_code}/sensors/{sensor}/tidal-harmonics/predictions/data | **Experimental** Retrieve sea level predictions based on latest tide model of the sensor. Maximum 365 days in one request. By default next day is retrieved. |
| [**getStationSensorResearchDataDetidedTD()**](ResearchApi.md#getStationSensorResearchDataDetidedTD) | **GET** /v2.1/research/stations/{station_code}/sensors/{sensor}/tidal-harmonics/data | **Experimental** Retrieve detided data for a station with a maximum of 365 days in one request. By default 7 days are retrieved. |


## `getResearchMetadata()`

```php
getResearchMetadata($sensor_id, $start_date, $stop_date): \SLSMF\Client\Model\GetResearchMetadata200Response
```

Retrieve daily metadata records from the research collection.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\ResearchApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$sensor_id = 308; // int | Sensor ID
$start_date = '2026-10-14'; // string | From date, included in result, format 'YYYY-MM-DD'
$stop_date = '2026-10-22'; // string | Until date, not included in result, format 'YYYY-MM-DD'

try {
    $result = $apiInstance->getResearchMetadata($sensor_id, $start_date, $stop_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResearchApi->getResearchMetadata: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **sensor_id** | **int**| Sensor ID | [default to 308] |
| **start_date** | **string**| From date, included in result, format &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-10-14&#39;] |
| **stop_date** | **string**| Until date, not included in result, format &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-10-22&#39;] |

### Return type

[**\SLSMF\Client\Model\GetResearchMetadata200Response**](../Model/GetResearchMetadata200Response.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStationResearchData()`

```php
getStationResearchData($station_code, $sensor, $days_per_page, $page, $start_date, $stop_date, $include_sensors, $subtract_30d_average, $flag_qc, $filter_completeness, $filter_distinctness, $filter_shift, $filter_out_of_range, $filter_exceeded_neighbours, $filter_spikes_via_median, $filter_flat_line, $fit_to_sample_rate): string
```

Retrieve quality controlled data for a station with a maximum of 365 days in one request. By default 7 days are retrieved. More documentation on this API can be found on https://github.com/SLSMF/API-Documentation

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\ResearchApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$station_code = 'abas'; // string | Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/
$sensor = 'one-sensor'; // string | This option returns data from only one sensor type for the entire period. The selected sensor will be the one that was preferred on the most days during the requested period.
$days_per_page = 365; // int | Number of days per page. Specifies number of calendar days that each page of results should cover, independent of how many data points actually exist for those days. The maximum span is 365 days.
$page = 1; // int | Page number for paginated results. Selects the n‑th consecutive block of calendar days, where each block's length is set by days_per_page. For example page = 1 returns the first calendar‑day interval, page = 2 the next, and so on, independent of how many data points actually exist for those days.
$start_date = '2026-10-14'; // string | From date, included in result, format 'YYYY-MM-DD'
$stop_date = '2026-10-22'; // string | Until date, not included in result, format 'YYYY-MM-DD'
$include_sensors = array('include_sensors_example'); // string[] | sensors to include, default is all sensors
$subtract_30d_average = false; // bool | Level sea level data relative to the mean sea level of the previous 30 days. If a day has low completeness, low distinctness, or a detected shift, the levelled value is unavailable and is set to slevel = NA. **WARNING:** removes long term trends.
$flag_qc = false; // bool | Add quality control flags in response data. Flag 'missing' is true when expected realtime measurement is missing, based on sensor rate. Thus works in combination with fit_to_sample_rate.
$filter_completeness = true; // bool | Set slevel = NA when day is flagged as low 'completeness'
$filter_distinctness = true; // bool | Set slevel = NA when day is flagged as low 'distinctness'
$filter_shift = true; // bool | Set slevel = NA when day is flagged as having a 'shift'
$filter_out_of_range = true; // bool | Set slevel = NA when sea level flagged as 'out_of_range'
$filter_exceeded_neighbours = true; // bool | Set slevel = NA when sea level flagged as 'exceeded_neighbours'
$filter_spikes_via_median = true; // bool | Set slevel = NA when sea level flagged as 'spikes_via_median'
$filter_flat_line = true; // bool | Set slevel = NA when sea level flagged as 'flat_line'
$fit_to_sample_rate = false; // bool | Align the data to the sample rate, by adding extra records with slevel set to NA and qc flag missing. Timestamps are rounded down to the expected time of measurement based on the sample rate, starting from midnight

try {
    $result = $apiInstance->getStationResearchData($station_code, $sensor, $days_per_page, $page, $start_date, $stop_date, $include_sensors, $subtract_30d_average, $flag_qc, $filter_completeness, $filter_distinctness, $filter_shift, $filter_out_of_range, $filter_exceeded_neighbours, $filter_spikes_via_median, $filter_flat_line, $fit_to_sample_rate);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResearchApi->getStationResearchData: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **station_code** | **string**| Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/ | [default to &#39;abas&#39;] |
| **sensor** | **string**| This option returns data from only one sensor type for the entire period. The selected sensor will be the one that was preferred on the most days during the requested period. | [default to &#39;one-sensor&#39;] |
| **days_per_page** | **int**| Number of days per page. Specifies number of calendar days that each page of results should cover, independent of how many data points actually exist for those days. The maximum span is 365 days. | [optional] [default to 365] |
| **page** | **int**| Page number for paginated results. Selects the n‑th consecutive block of calendar days, where each block&#39;s length is set by days_per_page. For example page &#x3D; 1 returns the first calendar‑day interval, page &#x3D; 2 the next, and so on, independent of how many data points actually exist for those days. | [optional] [default to 1] |
| **start_date** | **string**| From date, included in result, format &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-10-14&#39;] |
| **stop_date** | **string**| Until date, not included in result, format &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-10-22&#39;] |
| **include_sensors** | [**string[]**](../Model/string.md)| sensors to include, default is all sensors | [optional] |
| **subtract_30d_average** | **bool**| Level sea level data relative to the mean sea level of the previous 30 days. If a day has low completeness, low distinctness, or a detected shift, the levelled value is unavailable and is set to slevel &#x3D; NA. **WARNING:** removes long term trends. | [optional] [default to false] |
| **flag_qc** | **bool**| Add quality control flags in response data. Flag &#39;missing&#39; is true when expected realtime measurement is missing, based on sensor rate. Thus works in combination with fit_to_sample_rate. | [optional] [default to false] |
| **filter_completeness** | **bool**| Set slevel &#x3D; NA when day is flagged as low &#39;completeness&#39; | [optional] [default to true] |
| **filter_distinctness** | **bool**| Set slevel &#x3D; NA when day is flagged as low &#39;distinctness&#39; | [optional] [default to true] |
| **filter_shift** | **bool**| Set slevel &#x3D; NA when day is flagged as having a &#39;shift&#39; | [optional] [default to true] |
| **filter_out_of_range** | **bool**| Set slevel &#x3D; NA when sea level flagged as &#39;out_of_range&#39; | [optional] [default to true] |
| **filter_exceeded_neighbours** | **bool**| Set slevel &#x3D; NA when sea level flagged as &#39;exceeded_neighbours&#39; | [optional] [default to true] |
| **filter_spikes_via_median** | **bool**| Set slevel &#x3D; NA when sea level flagged as &#39;spikes_via_median&#39; | [optional] [default to true] |
| **filter_flat_line** | **bool**| Set slevel &#x3D; NA when sea level flagged as &#39;flat_line&#39; | [optional] [default to true] |
| **fit_to_sample_rate** | **bool**| Align the data to the sample rate, by adding extra records with slevel set to NA and qc flag missing. Timestamps are rounded down to the expected time of measurement based on the sample rate, starting from midnight | [optional] [default to false] |

### Return type

**string**

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/csv`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStationSensorConstituents()`

```php
getStationSensorConstituents($station_code, $sensor, $stop_date, $lateral_correction): string
```

**Experimental** Retrieve tide model data of sensor.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\ResearchApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$station_code = 'abas'; // string | Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/
$sensor = 'rad'; // string | Sensor type
$stop_date = '2026-10-22'; // string | Retrieve the latest tidal prediction model up to specified date
$lateral_correction = true; // bool | Apply lateral correction to amplitude and phase

try {
    $result = $apiInstance->getStationSensorConstituents($station_code, $sensor, $stop_date, $lateral_correction);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResearchApi->getStationSensorConstituents: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **station_code** | **string**| Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/ | [default to &#39;abas&#39;] |
| **sensor** | **string**| Sensor type | [default to &#39;rad&#39;] |
| **stop_date** | **string**| Retrieve the latest tidal prediction model up to specified date | [optional] [default to &#39;2026-10-22&#39;] |
| **lateral_correction** | **bool**| Apply lateral correction to amplitude and phase | [optional] [default to true] |

### Return type

**string**

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/csv`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStationSensorPredictions()`

```php
getStationSensorPredictions($station_code, $sensor, $time_interval, $start_date, $stop_date, $days_per_page, $page, $subtract_30d_average): string
```

**Experimental** Retrieve sea level predictions based on latest tide model of the sensor. Maximum 365 days in one request. By default next day is retrieved.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\ResearchApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$station_code = 'abas'; // string | Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/
$sensor = 'rad'; // string | Sensor type
$time_interval = 60; // int | Time interval of predictions in seconds.
$start_date = '2026-10-22'; // string | 'YYYY-MM-DDTHH:MM' or 'YYYY-MM-DDTHH:MM:SS' or 'YYYY-MM-DDTHH:MM:SSZ' or 'YYYY-MM-DD HH:MM:SS' or 'YYYY-MM-DD'
$stop_date = '2026-10-23'; // string | until date, not included in result. 'YYYY-MM-DDTHH:MM' or 'YYYY-MM-DDTHH:MM:SS' or 'YYYY-MM-DDTHH:MM:SSZ' or 'YYYY-MM-DD HH:MM:SS' or 'YYYY-MM-DD'
$days_per_page = 365; // int | Number of days per page. Specifies number of calendar days that each page of results should cover, independent of how many data points actually exist for those days. The maximum span is 365 days.
$page = 1; // int | Page number for paginated results. Selects the n‑th consecutive block of calendar days, where each block's length is set by days_per_page. For example page = 1 returns the first calendar‑day interval, page = 2 the next, and so on, independent of how many data points actually exist for those days.
$subtract_30d_average = false; // bool | Subtract 30-day average

try {
    $result = $apiInstance->getStationSensorPredictions($station_code, $sensor, $time_interval, $start_date, $stop_date, $days_per_page, $page, $subtract_30d_average);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResearchApi->getStationSensorPredictions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **station_code** | **string**| Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/ | [default to &#39;abas&#39;] |
| **sensor** | **string**| Sensor type | [default to &#39;rad&#39;] |
| **time_interval** | **int**| Time interval of predictions in seconds. | [optional] [default to 60] |
| **start_date** | **string**| &#39;YYYY-MM-DDTHH:MM&#39; or &#39;YYYY-MM-DDTHH:MM:SS&#39; or &#39;YYYY-MM-DDTHH:MM:SSZ&#39; or &#39;YYYY-MM-DD HH:MM:SS&#39; or &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-10-22&#39;] |
| **stop_date** | **string**| until date, not included in result. &#39;YYYY-MM-DDTHH:MM&#39; or &#39;YYYY-MM-DDTHH:MM:SS&#39; or &#39;YYYY-MM-DDTHH:MM:SSZ&#39; or &#39;YYYY-MM-DD HH:MM:SS&#39; or &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-10-23&#39;] |
| **days_per_page** | **int**| Number of days per page. Specifies number of calendar days that each page of results should cover, independent of how many data points actually exist for those days. The maximum span is 365 days. | [optional] [default to 365] |
| **page** | **int**| Page number for paginated results. Selects the n‑th consecutive block of calendar days, where each block&#39;s length is set by days_per_page. For example page &#x3D; 1 returns the first calendar‑day interval, page &#x3D; 2 the next, and so on, independent of how many data points actually exist for those days. | [optional] [default to 1] |
| **subtract_30d_average** | **bool**| Subtract 30-day average | [optional] [default to false] |

### Return type

**string**

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/csv`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStationSensorResearchDataDetidedTD()`

```php
getStationSensorResearchDataDetidedTD($station_code, $sensor, $start_date, $stop_date, $days_per_page, $page, $include_sensors, $subtract_30d_average, $flag_qc, $filter_completeness, $filter_distinctness, $filter_shift, $filter_out_of_range, $filter_exceeded_neighbours, $filter_spikes_via_median, $filter_flat_line): string
```

**Experimental** Retrieve detided data for a station with a maximum of 365 days in one request. By default 7 days are retrieved.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\ResearchApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$station_code = 'abas'; // string | Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/
$sensor = 'one-sensor'; // string | This option returns data from only one sensor type for the entire period. The selected sensor will be the one that was preferred on the most days during the requested period.
$start_date = '2026-10-14'; // string | From date, included in result, format 'YYYY-MM-DD'
$stop_date = '2026-10-22'; // string | Until date, not included in result, format 'YYYY-MM-DD'
$days_per_page = 365; // int | Number of days per page. Specifies number of calendar days that each page of results should cover, independent of how many data points actually exist for those days. The maximum span is 365 days.
$page = 1; // int | Page number for paginated results. Selects the n‑th consecutive block of calendar days, where each block's length is set by days_per_page. For example page = 1 returns the first calendar‑day interval, page = 2 the next, and so on, independent of how many data points actually exist for those days.
$include_sensors = array('include_sensors_example'); // string[] | sensors to include, default is all sensors
$subtract_30d_average = false; // bool | Level sea level data relative to the mean sea level of the previous 30 days. If a day has low completeness, low distinctness, or a detected shift, the levelled value is unavailable and is set to slevel = NA. Careful as it removes long term trends.
$flag_qc = false; // bool | Add quality control flags in response data. Flag 'missing' is true when expected realtime measurement is missing, based on sensor rate. Thus works in combination with fit_to_sample_rate.
$filter_completeness = true; // bool | Set slevel = NA for days with completeness below 30%
$filter_distinctness = true; // bool | Set slevel = NA for days with distinctness below 10%
$filter_shift = true; // bool | Set slevel = NA for days with shift
$filter_out_of_range = true; // bool | Set slevel = NA when sea level flagged as out of range
$filter_exceeded_neighbours = true; // bool | Set slevel = NA when sea level flagged as exceeded neighbours
$filter_spikes_via_median = true; // bool | Set slevel = NA when sea level flagged as spikes via median
$filter_flat_line = true; // bool | Set slevel = NA when sea level flagged as flat line

try {
    $result = $apiInstance->getStationSensorResearchDataDetidedTD($station_code, $sensor, $start_date, $stop_date, $days_per_page, $page, $include_sensors, $subtract_30d_average, $flag_qc, $filter_completeness, $filter_distinctness, $filter_shift, $filter_out_of_range, $filter_exceeded_neighbours, $filter_spikes_via_median, $filter_flat_line);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResearchApi->getStationSensorResearchDataDetidedTD: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **station_code** | **string**| Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/ | [default to &#39;abas&#39;] |
| **sensor** | **string**| This option returns data from only one sensor type for the entire period. The selected sensor will be the one that was preferred on the most days during the requested period. | [default to &#39;one-sensor&#39;] |
| **start_date** | **string**| From date, included in result, format &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-10-14&#39;] |
| **stop_date** | **string**| Until date, not included in result, format &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-10-22&#39;] |
| **days_per_page** | **int**| Number of days per page. Specifies number of calendar days that each page of results should cover, independent of how many data points actually exist for those days. The maximum span is 365 days. | [optional] [default to 365] |
| **page** | **int**| Page number for paginated results. Selects the n‑th consecutive block of calendar days, where each block&#39;s length is set by days_per_page. For example page &#x3D; 1 returns the first calendar‑day interval, page &#x3D; 2 the next, and so on, independent of how many data points actually exist for those days. | [optional] [default to 1] |
| **include_sensors** | [**string[]**](../Model/string.md)| sensors to include, default is all sensors | [optional] |
| **subtract_30d_average** | **bool**| Level sea level data relative to the mean sea level of the previous 30 days. If a day has low completeness, low distinctness, or a detected shift, the levelled value is unavailable and is set to slevel &#x3D; NA. Careful as it removes long term trends. | [optional] [default to false] |
| **flag_qc** | **bool**| Add quality control flags in response data. Flag &#39;missing&#39; is true when expected realtime measurement is missing, based on sensor rate. Thus works in combination with fit_to_sample_rate. | [optional] [default to false] |
| **filter_completeness** | **bool**| Set slevel &#x3D; NA for days with completeness below 30% | [optional] [default to true] |
| **filter_distinctness** | **bool**| Set slevel &#x3D; NA for days with distinctness below 10% | [optional] [default to true] |
| **filter_shift** | **bool**| Set slevel &#x3D; NA for days with shift | [optional] [default to true] |
| **filter_out_of_range** | **bool**| Set slevel &#x3D; NA when sea level flagged as out of range | [optional] [default to true] |
| **filter_exceeded_neighbours** | **bool**| Set slevel &#x3D; NA when sea level flagged as exceeded neighbours | [optional] [default to true] |
| **filter_spikes_via_median** | **bool**| Set slevel &#x3D; NA when sea level flagged as spikes via median | [optional] [default to true] |
| **filter_flat_line** | **bool**| Set slevel &#x3D; NA when sea level flagged as flat line | [optional] [default to true] |

### Return type

**string**

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/csv`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
