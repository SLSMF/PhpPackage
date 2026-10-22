# SLSMF\\Client\StationApi

All URIs are relative to http://devapi.ioc-sealevelmonitoring.org, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getLatestStationMessage()**](StationApi.md#getLatestStationMessage) | **GET** /v2.1/stations/{station_code}/message | Retrieve last messages for a station. |
| [**getStationByCode()**](StationApi.md#getStationByCode) | **GET** /v2.1/stations/{station_code} | Retrieve metadata for a station. |
| [**getStationData()**](StationApi.md#getStationData) | **GET** /v2.1/stations/{station_code}/data | Retrieve data of a station with max 30 day limit or 150 000 records. |
| [**getStationPerformance()**](StationApi.md#getStationPerformance) | **GET** /v2.1/stations/{station_code}/performance | Retrieve performance info of a station. |
| [**getStations()**](StationApi.md#getStations) | **GET** /v2.1/stations | Retrieve metadata of all stations. |
| [**getStationsMap()**](StationApi.md#getStationsMap) | **GET** /v2.1/stations/map | Retrieve stations map. |
| [**getStationsPerformance()**](StationApi.md#getStationsPerformance) | **GET** /v2.1/stations/performance | Retrieve performance info of all stations. |
| [**getStationsShortlist()**](StationApi.md#getStationsShortlist) | **GET** /v2.1/stations/shortlist | Retrieve limited metadata of all stations. |


## `getLatestStationMessage()`

```php
getLatestStationMessage($station_code, $wmo, $locator_id, $nmc, $parser_status_code, $limit, $offset): \SLSMF\\Client\Model\StationMessageInner[]
```

Retrieve last messages for a station.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$station_code = 'acaj'; // string | Station code used in query.
$wmo = SZXX01; // string | WMO header
$locator_id = KWBC; // string | Locator ID of the station
$nmc = kmi; // string | National Meteorological Center (options: kmi, meteo_france)
$parser_status_code = 1; // int | Status code of GTS parser, options: 1 = success; at least one station matched and data was parsed; 100 = no/invalid WMO header; 101 = wrong parser for this WMO; 200 = WMO unknown / no metadata for that station type; 300 = GOES payload/DCP identification missing; 301 = malformed DCP_ID (not 8 chars); 400 = encoded payload decoded to nothing / failed decode; 401 = file/header does not match expected binary/OTT format; 500 = CREX detected, but not a supported tide-series format; 501 = CREX/DART message recognized but no usable stations found / corrupt data; 502 = DART event mode message ignored (msg nr <= 1); 503 = DART message scrambled/unparseable; 600 = parser ran, but no metadata/station match was found
$limit = 1; // int | Maximum number of records returned per request. Starts from latest to oldest.
$offset = 0; // int | Number of records to skip before returning results

try {
    $result = $apiInstance->getLatestStationMessage($station_code, $wmo, $locator_id, $nmc, $parser_status_code, $limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getLatestStationMessage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **station_code** | **string**| Station code used in query. | [default to &#39;acaj&#39;] |
| **wmo** | **string**| WMO header | [optional] |
| **locator_id** | **string**| Locator ID of the station | [optional] |
| **nmc** | **string**| National Meteorological Center (options: kmi, meteo_france) | [optional] |
| **parser_status_code** | **int**| Status code of GTS parser, options: 1 &#x3D; success; at least one station matched and data was parsed; 100 &#x3D; no/invalid WMO header; 101 &#x3D; wrong parser for this WMO; 200 &#x3D; WMO unknown / no metadata for that station type; 300 &#x3D; GOES payload/DCP identification missing; 301 &#x3D; malformed DCP_ID (not 8 chars); 400 &#x3D; encoded payload decoded to nothing / failed decode; 401 &#x3D; file/header does not match expected binary/OTT format; 500 &#x3D; CREX detected, but not a supported tide-series format; 501 &#x3D; CREX/DART message recognized but no usable stations found / corrupt data; 502 &#x3D; DART event mode message ignored (msg nr &lt;&#x3D; 1); 503 &#x3D; DART message scrambled/unparseable; 600 &#x3D; parser ran, but no metadata/station match was found | [optional] |
| **limit** | **int**| Maximum number of records returned per request. Starts from latest to oldest. | [optional] [default to 1] |
| **offset** | **int**| Number of records to skip before returning results | [optional] [default to 0] |

### Return type

[**\SLSMF\\Client\Model\StationMessageInner[]**](../Model/StationMessageInner.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStationByCode()`

```php
getStationByCode($station_code): \SLSMF\\Client\Model\Station
```

Retrieve metadata for a station.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$station_code = 'acaj'; // string | Station code used in query.

try {
    $result = $apiInstance->getStationByCode($station_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getStationByCode: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **station_code** | **string**| Station code used in query. | [default to &#39;acaj&#39;] |

### Return type

[**\SLSMF\\Client\Model\Station**](../Model/Station.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStationData()`

```php
getStationData($station_code, $start_time, $stop_time, $include_sensors, $no_filter, $show_all_sensors, $skip_gaps_until, $limit): \SLSMF\\Client\Model\StationDataInner[]
```

Retrieve data of a station with max 30 day limit or 150 000 records.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$station_code = 'acaj'; // string | Station code used in query.
$start_time = '2026-10-15T11:21'; // string | default is date and time of request minus 12 hours. 'YYYY-MM-DDTHH:MM' or 'YYYY-MM-DDTHH:MM:SS' or 'YYYY-MM-DDTHH:MM:SSZ' or 'YYYY-MM-DD HH:MM:SS' or 'YYYY-MM-DD'
$stop_time = '2026-10-22T11:21'; // string | default is date and time of request minus 12 hours. 'YYYY-MM-DDTHH:MM' or 'YYYY-MM-DDTHH:MM:SS' or 'YYYY-MM-DDTHH:MM:SSZ' or 'YYYY-MM-DD HH:MM:SS' or 'YYYY-MM-DD'
$include_sensors = array('include_sensors_example'); // string[] | sensors to include, default is all sensors
$no_filter = false; // bool | Include all values when true; when false excludes value -999 (missing value), default = false
$show_all_sensors = false; // bool | Show sensors that were set as hidden in the database, default=false.
$skip_gaps_until = '2026-04-16T15:46'; // string | Date in format 'YYYY-MM-DDTHH:MM'. If there is no data available within the specified 'starttime' to 'stoptime' interval, the interval will be shifted to the next datetime for which data is available, while maintaining the original interval size in days. If no data is available before the given date, the response will be empty.
$limit = 10; // int | Maximum number of records returned per request

try {
    $result = $apiInstance->getStationData($station_code, $start_time, $stop_time, $include_sensors, $no_filter, $show_all_sensors, $skip_gaps_until, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getStationData: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **station_code** | **string**| Station code used in query. | [default to &#39;acaj&#39;] |
| **start_time** | **string**| default is date and time of request minus 12 hours. &#39;YYYY-MM-DDTHH:MM&#39; or &#39;YYYY-MM-DDTHH:MM:SS&#39; or &#39;YYYY-MM-DDTHH:MM:SSZ&#39; or &#39;YYYY-MM-DD HH:MM:SS&#39; or &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-10-15T11:21&#39;] |
| **stop_time** | **string**| default is date and time of request minus 12 hours. &#39;YYYY-MM-DDTHH:MM&#39; or &#39;YYYY-MM-DDTHH:MM:SS&#39; or &#39;YYYY-MM-DDTHH:MM:SSZ&#39; or &#39;YYYY-MM-DD HH:MM:SS&#39; or &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-10-22T11:21&#39;] |
| **include_sensors** | [**string[]**](../Model/string.md)| sensors to include, default is all sensors | [optional] |
| **no_filter** | **bool**| Include all values when true; when false excludes value -999 (missing value), default &#x3D; false | [optional] [default to false] |
| **show_all_sensors** | **bool**| Show sensors that were set as hidden in the database, default&#x3D;false. | [optional] [default to false] |
| **skip_gaps_until** | **string**| Date in format &#39;YYYY-MM-DDTHH:MM&#39;. If there is no data available within the specified &#39;starttime&#39; to &#39;stoptime&#39; interval, the interval will be shifted to the next datetime for which data is available, while maintaining the original interval size in days. If no data is available before the given date, the response will be empty. | [optional] [default to &#39;2026-04-16T15:46&#39;] |
| **limit** | **int**| Maximum number of records returned per request | [optional] [default to 10] |

### Return type

[**\SLSMF\\Client\Model\StationDataInner[]**](../Model/StationDataInner.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`, `text/html`, `text/plain; format=asc`, `text/plain; format=xtab`, `text/plain`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStationPerformance()`

```php
getStationPerformance($station_code): \SLSMF\\Client\Model\StationPerformance
```

Retrieve performance info of a station.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$station_code = 'acaj'; // string | Station code used in query.

try {
    $result = $apiInstance->getStationPerformance($station_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getStationPerformance: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **station_code** | **string**| Station code used in query. | [default to &#39;acaj&#39;] |

### Return type

[**\SLSMF\\Client\Model\StationPerformance**](../Model/StationPerformance.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStations()`

```php
getStations($operator_id, $datastream, $network, $operator_status_code, $data_status_code, $order, $direction, $limit): \SLSMF\\Client\Model\StationsInner[]
```

Retrieve metadata of all stations.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$operator_id = 56; // int | Limit selection to operator.
$datastream = 'all'; // string | Filter by datastream
$network = 'network_example'; // string | Filter by network
$operator_status_code = 56; // int | Filter by operator status code: 1 = Operational; 2 = Maintenance; 3 = In test; 4 = Incorrect data; 5 = Down.
$data_status_code = 56; // int | Filter by data status code. 1 = on-time (last observation is within 3 times the transmit interval), 2 = outdated, 3 = NA
$order = 'station_code'; // string | order by
$direction = 'asc'; // string | direction
$limit = 10; // int | Maximum number of records returned per request

try {
    $result = $apiInstance->getStations($operator_id, $datastream, $network, $operator_status_code, $data_status_code, $order, $direction, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getStations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **operator_id** | **int**| Limit selection to operator. | [optional] |
| **datastream** | **string**| Filter by datastream | [optional] [default to &#39;all&#39;] |
| **network** | **string**| Filter by network | [optional] |
| **operator_status_code** | **int**| Filter by operator status code: 1 &#x3D; Operational; 2 &#x3D; Maintenance; 3 &#x3D; In test; 4 &#x3D; Incorrect data; 5 &#x3D; Down. | [optional] |
| **data_status_code** | **int**| Filter by data status code. 1 &#x3D; on-time (last observation is within 3 times the transmit interval), 2 &#x3D; outdated, 3 &#x3D; NA | [optional] |
| **order** | **string**| order by | [optional] [default to &#39;station_code&#39;] |
| **direction** | **string**| direction | [optional] [default to &#39;asc&#39;] |
| **limit** | **int**| Maximum number of records returned per request | [optional] [default to 10] |

### Return type

[**\SLSMF\\Client\Model\StationsInner[]**](../Model/StationsInner.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStationsMap()`

```php
getStationsMap($show, $wrap, $code, $bbox, $showgauges, $showpar): string
```

Retrieve stations map.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$show = 'ALL'; // string | datastreams
$wrap = 56; // int | 
$code = 'code_example'; // string | Highlight a station
$bbox = 'bbox_example'; // string | Bounding box corners
$showgauges = true; // bool | Obsolete
$showpar = 'status'; // string | Parameter to show on map

try {
    $result = $apiInstance->getStationsMap($show, $wrap, $code, $bbox, $showgauges, $showpar);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getStationsMap: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **show** | **string**| datastreams | [optional] [default to &#39;ALL&#39;] |
| **wrap** | **int**|  | [optional] |
| **code** | **string**| Highlight a station | [optional] |
| **bbox** | **string**| Bounding box corners | [optional] |
| **showgauges** | **bool**| Obsolete | [optional] [default to true] |
| **showpar** | **string**| Parameter to show on map | [optional] [default to &#39;status&#39;] |

### Return type

**string**

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/vnd.google-earth.kml+xml`, `application/gml+xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStationsPerformance()`

```php
getStationsPerformance($datastream, $operator_id, $order, $direction, $limit): \SLSMF\\Client\Model\StationPerformance[]
```

Retrieve performance info of all stations.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$datastream = 'all'; // string | Filter by datastream
$operator_id = 56; // int | Limit selection to operator.
$order = 'station_code'; // string | order by
$direction = 'asc'; // string | direction
$limit = 10; // int | Maximum number of records returned per request

try {
    $result = $apiInstance->getStationsPerformance($datastream, $operator_id, $order, $direction, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getStationsPerformance: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **datastream** | **string**| Filter by datastream | [optional] [default to &#39;all&#39;] |
| **operator_id** | **int**| Limit selection to operator. | [optional] |
| **order** | **string**| order by | [optional] [default to &#39;station_code&#39;] |
| **direction** | **string**| direction | [optional] [default to &#39;asc&#39;] |
| **limit** | **int**| Maximum number of records returned per request | [optional] [default to 10] |

### Return type

[**\SLSMF\\Client\Model\StationPerformance[]**](../Model/StationPerformance.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStationsShortlist()`

```php
getStationsShortlist($limit): \SLSMF\\Client\Model\StationsShortlistInner[]
```

Retrieve limited metadata of all stations.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$limit = 10; // int | Maximum number of records returned per request

try {
    $result = $apiInstance->getStationsShortlist($limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getStationsShortlist: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **int**| Maximum number of records returned per request | [optional] [default to 10] |

### Return type

[**\SLSMF\\Client\Model\StationsShortlistInner[]**](../Model/StationsShortlistInner.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
