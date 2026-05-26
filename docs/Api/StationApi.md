# SLSMF\Client\StationApi



All URIs are relative to http://devapi.ioc-sealevelmonitoring.org, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getLatestStationMessage()**](StationApi.md#getLatestStationMessage) | **GET** /v2/stations/{code}/message | Retrieve latest message for a station. |
| [**getStationByCode()**](StationApi.md#getStationByCode) | **GET** /v2/stations/{code} | Retrieve metadata for a station. |
| [**getStationData()**](StationApi.md#getStationData) | **GET** /v2/stations/{code}/data | Retrieve data for a station with max 30 day limit or 150 000 records. |
| [**getStationPerformance()**](StationApi.md#getStationPerformance) | **GET** /v2/stations/performance | Retrieve performance info for stations. |
| [**getStations()**](StationApi.md#getStations) | **GET** /v2/stations | Retrieve all stations. |
| [**getStationsMap()**](StationApi.md#getStationsMap) | **GET** /v2/stations/map | Retrieve stations map. |
| [**getStationsShortlist()**](StationApi.md#getStationsShortlist) | **GET** /v2/stations/shortlist | Retrieve stations with limited info. |


## `getLatestStationMessage()`

```php
getLatestStationMessage($code): \SLSMF\Client\Model\StationMessageJsonInner[]
```

Retrieve latest message for a station.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$code = 'abas'; // string | Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/

try {
    $result = $apiInstance->getLatestStationMessage($code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getLatestStationMessage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **code** | **string**| Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/ | [default to &#39;abas&#39;] |

### Return type

[**\SLSMF\Client\Model\StationMessageJsonInner[]**](../Model/StationMessageJsonInner.md)

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
getStationByCode($code): \SLSMF\Client\Model\StationJsonInner[]
```

Retrieve metadata for a station.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$code = 'abas'; // string | Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/

try {
    $result = $apiInstance->getStationByCode($code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getStationByCode: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **code** | **string**| Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/ | [default to &#39;abas&#39;] |

### Return type

[**\SLSMF\Client\Model\StationJsonInner[]**](../Model/StationJsonInner.md)

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
getStationData($code, $timestart, $timestop, $includesensors, $nofilter, $allsensors, $skip_gaps_until, $limit): \SLSMF\Client\Model\StationDataJsonInner[]
```

Retrieve data for a station with max 30 day limit or 150 000 records.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$code = 'abas'; // string | Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/
$timestart = '2026-05-19T12:07'; // string | default is date and time of request minus 12 hours. 'YYYY-MM-DDTHH:MM' or 'YYYY-MM-DDTHH:MM:SS' or 'YYYY-MM-DDTHH:MM:SSZ' or 'YYYY-MM-DD HH:MM:SS' or 'YYYY-MM-DD'
$timestop = '2026-05-26T12:07'; // string | default is date and time of request minus 12 hours. 'YYYY-MM-DDTHH:MM' or 'YYYY-MM-DDTHH:MM:SS' or 'YYYY-MM-DDTHH:MM:SSZ' or 'YYYY-MM-DD HH:MM:SS' or 'YYYY-MM-DD'
$includesensors = array('includesensors_example'); // string[] | sensors to include, default is all sensors
$nofilter = false; // bool | Include all values when true; when false excludes value -999 (missing value), default = false
$allsensors = false; // bool | Show sensors that were set as hidden in the database, default=false.
$skip_gaps_until = '2026-05-26T12:07'; // string | Date in format 'YYYY-MM-DDTHH:MM'. If there is no data available within the specified 'starttime' to 'stoptime' interval, the interval will be shifted to the next datetime for which data is available, while maintaining the original interval size in days. If no data is available before the given date, the response will be empty.
$limit = 10; // int | Maximum number of records returned per request

try {
    $result = $apiInstance->getStationData($code, $timestart, $timestop, $includesensors, $nofilter, $allsensors, $skip_gaps_until, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getStationData: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **code** | **string**| Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/ | [default to &#39;abas&#39;] |
| **timestart** | **string**| default is date and time of request minus 12 hours. &#39;YYYY-MM-DDTHH:MM&#39; or &#39;YYYY-MM-DDTHH:MM:SS&#39; or &#39;YYYY-MM-DDTHH:MM:SSZ&#39; or &#39;YYYY-MM-DD HH:MM:SS&#39; or &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-05-19T12:07&#39;] |
| **timestop** | **string**| default is date and time of request minus 12 hours. &#39;YYYY-MM-DDTHH:MM&#39; or &#39;YYYY-MM-DDTHH:MM:SS&#39; or &#39;YYYY-MM-DDTHH:MM:SSZ&#39; or &#39;YYYY-MM-DD HH:MM:SS&#39; or &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-05-26T12:07&#39;] |
| **includesensors** | [**string[]**](../Model/string.md)| sensors to include, default is all sensors | [optional] |
| **nofilter** | **bool**| Include all values when true; when false excludes value -999 (missing value), default &#x3D; false | [optional] [default to false] |
| **allsensors** | **bool**| Show sensors that were set as hidden in the database, default&#x3D;false. | [optional] [default to false] |
| **skip_gaps_until** | **string**| Date in format &#39;YYYY-MM-DDTHH:MM&#39;. If there is no data available within the specified &#39;starttime&#39; to &#39;stoptime&#39; interval, the interval will be shifted to the next datetime for which data is available, while maintaining the original interval size in days. If no data is available before the given date, the response will be empty. | [optional] [default to &#39;2026-05-26T12:07&#39;] |
| **limit** | **int**| Maximum number of records returned per request | [optional] [default to 10] |

### Return type

[**\SLSMF\Client\Model\StationDataJsonInner[]**](../Model/StationDataJsonInner.md)

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
getStationPerformance($showall, $operator, $order, $dir, $limit): \SLSMF\Client\Model\StationPerformanceJsonInner[]
```

Retrieve performance info for stations.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$showall = 'all'; // string | datastreams
$operator = 56; // int | Limit selection to operator.
$order = 'code'; // string | order by
$dir = 'asc'; // string | direction
$limit = 10; // int | Maximum number of records returned per request

try {
    $result = $apiInstance->getStationPerformance($showall, $operator, $order, $dir, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getStationPerformance: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **showall** | **string**| datastreams | [optional] [default to &#39;all&#39;] |
| **operator** | **int**| Limit selection to operator. | [optional] |
| **order** | **string**| order by | [optional] [default to &#39;code&#39;] |
| **dir** | **string**| direction | [optional] [default to &#39;asc&#39;] |
| **limit** | **int**| Maximum number of records returned per request | [optional] [default to 10] |

### Return type

[**\SLSMF\Client\Model\StationPerformanceJsonInner[]**](../Model/StationPerformanceJsonInner.md)

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
getStations($showall, $operator, $order, $dir, $limit): \SLSMF\Client\Model\StationsJsonInner[]
```

Retrieve all stations.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\StationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$showall = 'all'; // string | datastreams
$operator = 56; // int | Limit selection to operator.
$order = 'code'; // string | order by
$dir = 'asc'; // string | direction
$limit = 10; // int | Maximum number of records returned per request

try {
    $result = $apiInstance->getStations($showall, $operator, $order, $dir, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StationApi->getStations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **showall** | **string**| datastreams | [optional] [default to &#39;all&#39;] |
| **operator** | **int**| Limit selection to operator. | [optional] |
| **order** | **string**| order by | [optional] [default to &#39;code&#39;] |
| **dir** | **string**| direction | [optional] [default to &#39;asc&#39;] |
| **limit** | **int**| Maximum number of records returned per request | [optional] [default to 10] |

### Return type

[**\SLSMF\Client\Model\StationsJsonInner[]**](../Model/StationsJsonInner.md)

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
getStationsMap($show, $wrap, $code, $bbox, $showgauges, $showpar): \SLSMF\Client\Model\MapKmlXml
```

Retrieve stations map.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\StationApi(
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

[**\SLSMF\Client\Model\MapKmlXml**](../Model/MapKmlXml.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/vnd.google-earth.kml+xml`, `application/gml+xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getStationsShortlist()`

```php
getStationsShortlist($limit): \SLSMF\Client\Model\StationsShortlistJsonInner[]
```

Retrieve stations with limited info.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\StationApi(
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

[**\SLSMF\Client\Model\StationsShortlistJsonInner[]**](../Model/StationsShortlistJsonInner.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
