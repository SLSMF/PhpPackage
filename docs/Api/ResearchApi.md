# OpenAPI\Client\ResearchApi

All URIs are relative to http://devapi.ioc-sealevelmonitoring.org, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getStationResearchData()**](ResearchApi.md#getStationResearchData) | **GET** /v2/research/stations/{code}/sensors/{sensor}/data | Retrieve data for a station max 3650 days in one request. By default 7 days are retrieved. Days with low completeness (&lt;30%), low distinctness (&lt;10%) or with a detected shift are removed in any case. |


## `getStationResearchData()`

```php
getStationResearchData($code, $sensor, $days_per_page, $page, $timestart, $timestop, $includesensors, $level_data, $flag_qc, $filter_completeness, $filter_distinctness, $filter_shift, $filter_out_of_range, $filter_exceeded_neighbours, $filter_spikes_via_median, $filter_flat_line, $fit_sample_interval): string
```

Retrieve data for a station max 3650 days in one request. By default 7 days are retrieved. Days with low completeness (<30%), low distinctness (<10%) or with a detected shift are removed in any case.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ResearchApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$code = 'abas'; // string | Station code used in query
$sensor = 'one-sensor'; // string | <b>One sensor</b>: This option returns data from only one sensor type for the entire period. The selected sensor will be the one that was preferred on the most days during the requested period, filtered by the included sensors parameter.                                 <b>Alternate sensor</b>: This option returns data from multiple sensors. The preferred sensor for each individual day will be returned, filtered by the included sensors parameter. If no preferred sensor is available on a given day, no data will be returned for that day.
$days_per_page = 3650; // int | Maximum number of days spanning a page, max 3650days
$page = 1; // int | Page number for paginated results
$timestart = '2026-01-06'; // string | From date, included in result, format 'YYYY-MM-DD'
$timestop = '2026-01-14'; // string | Until date, not included in result, format 'YYYY-MM-DD'
$includesensors = array('includesensors_example'); // string[] | sensors to include, default is all sensors
$level_data = false; // bool | Level sea level data relative to the mean sea level of the previous 30 days
$flag_qc = false; // bool | Include quality control flags in response data
$filter_completeness = true; // bool | Set slevel = NA when day is flagged as low 'completeness'
$filter_distinctness = true; // bool | Set slevel = NA when day is flagged as low 'distinctness'
$filter_shift = true; // bool | Set slevel = NA when day is flagged as having a 'shift'
$filter_out_of_range = true; // bool | Set slevel = NA when sea level flagged as 'out_of_range'
$filter_exceeded_neighbours = true; // bool | Set slevel = NA when sea level flagged as 'exceeded_neighbours'
$filter_spikes_via_median = true; // bool | Set slevel = NA when sea level flagged as 'spikes_via_median'
$filter_flat_line = true; // bool | Set slevel = NA when sea level flagged as 'flat_line'
$fit_sample_interval = true; // bool | Make time series regular, based on the sample rate. This is done by rounding down timestamps to the nearest fixed time intervals, and by adding missing records with slevel = NA

try {
    $result = $apiInstance->getStationResearchData($code, $sensor, $days_per_page, $page, $timestart, $timestop, $includesensors, $level_data, $flag_qc, $filter_completeness, $filter_distinctness, $filter_shift, $filter_out_of_range, $filter_exceeded_neighbours, $filter_spikes_via_median, $filter_flat_line, $fit_sample_interval);
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
| **days_per_page** | **int**| Maximum number of days spanning a page, max 3650days | [optional] [default to 3650] |
| **page** | **int**| Page number for paginated results | [optional] [default to 1] |
| **timestart** | **string**| From date, included in result, format &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-01-06&#39;] |
| **timestop** | **string**| Until date, not included in result, format &#39;YYYY-MM-DD&#39; | [optional] [default to &#39;2026-01-14&#39;] |
| **includesensors** | [**string[]**](../Model/string.md)| sensors to include, default is all sensors | [optional] |
| **level_data** | **bool**| Level sea level data relative to the mean sea level of the previous 30 days | [optional] [default to false] |
| **flag_qc** | **bool**| Include quality control flags in response data | [optional] [default to false] |
| **filter_completeness** | **bool**| Set slevel &#x3D; NA when day is flagged as low &#39;completeness&#39; | [optional] [default to true] |
| **filter_distinctness** | **bool**| Set slevel &#x3D; NA when day is flagged as low &#39;distinctness&#39; | [optional] [default to true] |
| **filter_shift** | **bool**| Set slevel &#x3D; NA when day is flagged as having a &#39;shift&#39; | [optional] [default to true] |
| **filter_out_of_range** | **bool**| Set slevel &#x3D; NA when sea level flagged as &#39;out_of_range&#39; | [optional] [default to true] |
| **filter_exceeded_neighbours** | **bool**| Set slevel &#x3D; NA when sea level flagged as &#39;exceeded_neighbours&#39; | [optional] [default to true] |
| **filter_spikes_via_median** | **bool**| Set slevel &#x3D; NA when sea level flagged as &#39;spikes_via_median&#39; | [optional] [default to true] |
| **filter_flat_line** | **bool**| Set slevel &#x3D; NA when sea level flagged as &#39;flat_line&#39; | [optional] [default to true] |
| **fit_sample_interval** | **bool**| Make time series regular, based on the sample rate. This is done by rounding down timestamps to the nearest fixed time intervals, and by adding missing records with slevel &#x3D; NA | [optional] [default to true] |

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
