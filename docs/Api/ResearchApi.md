# SLSMF\Client\ResearchApi



All URIs are relative to http://devapi.ioc-sealevelmonitoring.org, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getStationResearchData()**](ResearchApi.md#getStationResearchData) | **GET** /v2/research/stations/{code}/sensors/{sensor}/data | Retrieve quality controlled data for a station with a maximum of 365 days in one request. By default 7 days are retrieved. More documentation on this API can be found on https://github.com/SLSMF/API-Documentation |


## `getStationResearchData()`

```php
getStationResearchData($code, $sensor, $days_per_page, $page, $timestart, $timestop, $includesensors, $subtract_30d_average, $flag_qc, $filter_completeness, $filter_distinctness, $filter_shift, $filter_out_of_range, $filter_exceeded_neighbours, $filter_spikes_via_median, $filter_flat_line, $fit_to_sample_rate): string
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
$code = 'abas'; // string | Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/
$sensor = 'one-sensor'; // string | <b>One sensor</b>: This option returns data from only one sensor type for the entire period. The selected sensor will be the one that was preferred on the most days during the requested period, filtered by the included sensors parameter.                                 <b>Alternate sensor</b>: This option returns data from multiple sensors. The preferred sensor for each individual day will be returned, filtered by the included sensors parameter. If no preferred sensor is available on a given day, no data will be returned for that day.
$days_per_page = 365; // int | Number of days per page. Specifies number of calendar days that each page of results should cover, independent of how many data points actually exist for those days. The maximum span is 365 days.
$page = 1; // int | Page number for paginated results. Selects the n‑th consecutive block of calendar days, where each block’s length is set by days_per_page. For example page = 1 returns the first calendar‑day interval, page = 2 the next, and so on, independent of how many data points actually exist for those days.
$timestart = '2026-08-25'; // string | From date, included in result, format 'YYYY-MM-DD'. If not specified will use timestop minus 7 days
$timestop = '2026-09-02'; // string | Until date, not included in result, format 'YYYY-MM-DD'. If not specified, will use current date
$includesensors = array('includesensors_example'); // string[] | sensors to include, default is all sensors
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
    $result = $apiInstance->getStationResearchData($code, $sensor, $days_per_page, $page, $timestart, $timestop, $includesensors, $subtract_30d_average, $flag_qc, $filter_completeness, $filter_distinctness, $filter_shift, $filter_out_of_range, $filter_exceeded_neighbours, $filter_spikes_via_median, $filter_flat_line, $fit_to_sample_rate);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ResearchApi->getStationResearchData: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **code** | **string**| Station code used in query. See IOC codes in https://www.ioc-sealevelmonitoring.org/ssc/ | [default to &#39;abas&#39;] |
| **sensor** | **string**| &lt;b&gt;One sensor&lt;/b&gt;: This option returns data from only one sensor type for the entire period. The selected sensor will be the one that was preferred on the most days during the requested period, filtered by the included sensors parameter.                                 &lt;b&gt;Alternate sensor&lt;/b&gt;: This option returns data from multiple sensors. The preferred sensor for each individual day will be returned, filtered by the included sensors parameter. If no preferred sensor is available on a given day, no data will be returned for that day. | [default to &#39;one-sensor&#39;] |
| **days_per_page** | **int**| Number of days per page. Specifies number of calendar days that each page of results should cover, independent of how many data points actually exist for those days. The maximum span is 365 days. | [optional] [default to 365] |
| **page** | **int**| Page number for paginated results. Selects the n‑th consecutive block of calendar days, where each block’s length is set by days_per_page. For example page &#x3D; 1 returns the first calendar‑day interval, page &#x3D; 2 the next, and so on, independent of how many data points actually exist for those days. | [optional] [default to 1] |
| **timestart** | **string**| From date, included in result, format &#39;YYYY-MM-DD&#39;. If not specified will use timestop minus 7 days | [optional] [default to &#39;2026-08-25&#39;] |
| **timestop** | **string**| Until date, not included in result, format &#39;YYYY-MM-DD&#39;. If not specified, will use current date | [optional] [default to &#39;2026-09-02&#39;] |
| **includesensors** | [**string[]**](../Model/string.md)| sensors to include, default is all sensors | [optional] |
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
