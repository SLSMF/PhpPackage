# SLSMF\Client\ResearchApi

All URIs are relative to http://api.sealevelmonitoring.local, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getStationResearchData()**](ResearchApi.md#getStationResearchData) | **GET** /v2/research/stations/{code}/sensors/{sensor}/data | Retrieve data for a station max 3650 days in one request. By default 7 days are retrieved. Days with low completeness (&lt;30%), low distinctness (&lt;10%) or with a detected shift are removed in any case. |


## `getStationResearchData()`

```php
getStationResearchData($code, $sensor, $accept, $days_per_page, $page, $timestart, $timestop, $includesensors, $level_data, $original_stime, $flag_qc, $filter_out_of_range, $filter_exceeded_neighbours, $filter_spikes_via_median, $filter_flat_line): string
```

Retrieve data for a station max 3650 days in one request. By default 7 days are retrieved. Days with low completeness (<30%), low distinctness (<10%) or with a detected shift are removed in any case.

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
$code = 'abas'; // string | Station code used in query
$sensor = 'one-sensor'; // string | <b>One sensor</b>: This option returns data from only one sensor type for the entire period. The selected sensor will be the one that was preferred on the most days during the requested period, filtered by the included sensors parameter.                                 <b>Alternate sensor</b>: This option returns data from multiple sensors. The preferred sensor for each individual day will be returned, filtered by the included sensors parameter. If no preferred sensor is available on a given day, no data will be returned for that day.
$accept = 'application/json'; // string | hidden-parameter
$days_per_page = 3650; // int | Maximum number of days spanning a page, max 3650days
$page = 1; // int | page
$timestart = '2025-06-22'; // string | from date, included in result 'YYYY-MM-DD'
$timestop = '2025-06-30'; // string | until date, not included in result. 'YYYY-MM-DD'
$includesensors = array('includesensors_example'); // string[] | sensors to include
$level_data = true; // bool | Level data relative to the mean sea level of 30 days.
$original_stime = false; // bool | Return the stime not corrected by sensor rate.
$flag_qc = false; // bool | Add qc flags to the response.
$filter_out_of_range = true; // bool | Remove out of range values
$filter_exceeded_neighbours = true; // bool | Remove exceeded neighbours values
$filter_spikes_via_median = true; // bool | Remove spikes via median values
$filter_flat_line = true; // bool | Remove flat line

try {
    $result = $apiInstance->getStationResearchData($code, $sensor, $accept, $days_per_page, $page, $timestart, $timestop, $includesensors, $level_data, $original_stime, $flag_qc, $filter_out_of_range, $filter_exceeded_neighbours, $filter_spikes_via_median, $filter_flat_line);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResearchApi->getStationResearchData: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **code** | **string**| Station code used in query | [default to &#39;abas&#39;] |
| **sensor** | **string**| &lt;b&gt;One sensor&lt;/b&gt;: This option returns data from only one sensor type for the entire period. The selected sensor will be the one that was preferred on the most days during the requested period, filtered by the included sensors parameter.                                 &lt;b&gt;Alternate sensor&lt;/b&gt;: This option returns data from multiple sensors. The preferred sensor for each individual day will be returned, filtered by the included sensors parameter. If no preferred sensor is available on a given day, no data will be returned for that day. | [default to &#39;one-sensor&#39;] |
| **accept** | **string**| hidden-parameter | [optional] [default to &#39;application/json&#39;] |
| **days_per_page** | **int**| Maximum number of days spanning a page, max 3650days | [optional] [default to 3650] |
| **page** | **int**| page | [optional] [default to 1] |
| **timestart** | **string**| from date, included in result &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2025-06-22&#39;] |
| **timestop** | **string**| until date, not included in result. &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2025-06-30&#39;] |
| **includesensors** | [**string[]**](../Model/string.md)| sensors to include | [optional] |
| **level_data** | **bool**| Level data relative to the mean sea level of 30 days. | [optional] [default to true] |
| **original_stime** | **bool**| Return the stime not corrected by sensor rate. | [optional] [default to false] |
| **flag_qc** | **bool**| Add qc flags to the response. | [optional] [default to false] |
| **filter_out_of_range** | **bool**| Remove out of range values | [optional] [default to true] |
| **filter_exceeded_neighbours** | **bool**| Remove exceeded neighbours values | [optional] [default to true] |
| **filter_spikes_via_median** | **bool**| Remove spikes via median values | [optional] [default to true] |
| **filter_flat_line** | **bool**| Remove flat line | [optional] [default to true] |

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
