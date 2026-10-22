# SLSMF\Client\CatalogApi

All URIs are relative to http://api.sealevelmonitoring.local, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getCatalogEntries()**](CatalogApi.md#getCatalogEntries) | **GET** /v2.1/catalog | Retrieve list of all catalog entries. |
| [**getCatalogEntryByCode()**](CatalogApi.md#getCatalogEntryByCode) | **GET** /v2.1/catalog/{ssc_code} | Retrieve specific catalog entry by it&#39;s catalog identifier. |
| [**getCatalogEntryByOrganisationAndCode()**](CatalogApi.md#getCatalogEntryByOrganisationAndCode) | **GET** /v2.1/catalog/{organisation}/{external_code} | Retrieve a specific catalog entry by it&#39;s external identifier. |


## `getCatalogEntries()`

```php
getCatalogEntries($country_code, $limit): \SLSMF\Client\Model\CatalogEntry[]
```

Retrieve list of all catalog entries.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\CatalogApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$country_code = JP; // string | Country ISO 3166-1 alpha-2 code
$limit = 10; // int | Maximum number of records returned per request

try {
    $result = $apiInstance->getCatalogEntries($country_code, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CatalogApi->getCatalogEntries: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **country_code** | **string**| Country ISO 3166-1 alpha-2 code | [optional] |
| **limit** | **int**| Maximum number of records returned per request | [optional] [default to 10] |

### Return type

[**\SLSMF\Client\Model\CatalogEntry[]**](../Model/CatalogEntry.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getCatalogEntryByCode()`

```php
getCatalogEntryByCode($ssc_code): \SLSMF\Client\Model\CatalogEntry
```

Retrieve specific catalog entry by it's catalog identifier.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\CatalogApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ssc_code = 'SSC-abas'; // string | SSC-code

try {
    $result = $apiInstance->getCatalogEntryByCode($ssc_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CatalogApi->getCatalogEntryByCode: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ssc_code** | **string**| SSC-code | [default to &#39;SSC-abas&#39;] |

### Return type

[**\SLSMF\Client\Model\CatalogEntry**](../Model/CatalogEntry.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getCatalogEntryByOrganisationAndCode()`

```php
getCatalogEntryByOrganisationAndCode($organisation, $external_code): \SLSMF\Client\Model\CatalogEntry
```

Retrieve a specific catalog entry by it's external identifier.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\CatalogApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organisation = 'ioc'; // string | The source organisation for the provided code.
$external_code = 'abas'; // string | External station code used in query. See SSC catalog codes in https://www.ioc-sealevelmonitoring.org/ssc/

try {
    $result = $apiInstance->getCatalogEntryByOrganisationAndCode($organisation, $external_code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CatalogApi->getCatalogEntryByOrganisationAndCode: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organisation** | **string**| The source organisation for the provided code. | [default to &#39;ioc&#39;] |
| **external_code** | **string**| External station code used in query. See SSC catalog codes in https://www.ioc-sealevelmonitoring.org/ssc/ | [default to &#39;abas&#39;] |

### Return type

[**\SLSMF\Client\Model\CatalogEntry**](../Model/CatalogEntry.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
