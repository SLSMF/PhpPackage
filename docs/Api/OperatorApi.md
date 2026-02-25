# SLSMF\Client\OperatorApi



All URIs are relative to http://devapi.ioc-sealevelmonitoring.org, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getOperatorById()**](OperatorApi.md#getOperatorById) | **GET** /v2/operators/{operator_id} | Get fullname of operator by ID. |
| [**getOperators()**](OperatorApi.md#getOperators) | **GET** /v2/operators | List of operators |


## `getOperatorById()`

```php
getOperatorById($operator_id): \SLSMF\Client\Model\OperatorJsonInner[]
```

Get fullname of operator by ID.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\OperatorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$operator_id = 1; // int | Limit selection to operator.

try {
    $result = $apiInstance->getOperatorById($operator_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OperatorApi->getOperatorById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **operator_id** | **int**| Limit selection to operator. | [default to 1] |

### Return type

[**\SLSMF\Client\Model\OperatorJsonInner[]**](../Model/OperatorJsonInner.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getOperators()`

```php
getOperators($limit): \SLSMF\Client\Model\OperatorsJsonInner[]
```

List of operators

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\OperatorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$limit = 10; // int | Maximum number of records returned per request

try {
    $result = $apiInstance->getOperators($limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OperatorApi->getOperators: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **int**| Maximum number of records returned per request | [optional] [default to 10] |

### Return type

[**\SLSMF\Client\Model\OperatorsJsonInner[]**](../Model/OperatorsJsonInner.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
