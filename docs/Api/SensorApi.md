# OpenAPI\Client\SensorApi

All URIs are relative to http://devapi.ioc-sealevelmonitoring.org, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getSensors()**](SensorApi.md#getSensors) | **GET** /v2/sensors | Retrieve list of sensors. |


## `getSensors()`

```php
getSensors($showall, $limit): \OpenAPI\Client\Model\SensorsJsonInner[]
```

Retrieve list of sensors.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\SensorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$showall = 'all'; // string | datastreams
$limit = 10; // int | Maximum number of records returned per request

try {
    $result = $apiInstance->getSensors($showall, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SensorApi->getSensors: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **showall** | **string**| datastreams | [optional] [default to &#39;all&#39;] |
| **limit** | **int**| Maximum number of records returned per request | [optional] [default to 10] |

### Return type

[**\OpenAPI\Client\Model\SensorsJsonInner[]**](../Model/SensorsJsonInner.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
