# SLSMF\Client\CatalogApi

All URIs are relative to http://api.sealevelmonitoring.local, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getCatalogEntries()**](CatalogApi.md#getCatalogEntries) | **GET** /v2/catalog | Retrieve list of all catalog entries. |
| [**getCatalogEntryByCode()**](CatalogApi.md#getCatalogEntryByCode) | **GET** /v2/catalog/{code} | Retrieve specific catalog entry by it&#39;s catalog identifier. |
| [**getCatalogEntryByOrganisationAndCode()**](CatalogApi.md#getCatalogEntryByOrganisationAndCode) | **GET** /v2/catalog/{organisation}/{code} | Retrieve a specific catalog entry by it&#39;s external identifier. |


## `getCatalogEntries()`

```php
getCatalogEntries($accept, $country, $limit): \SLSMF\Client\Model\CatalogJsonInner[]
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
$accept = 'application/json'; // string | hidden-parameter
$country = 'country_example'; // string | country iso2
$limit = 10; // int | A hard limit on the amount of returned values.

try {
    $result = $apiInstance->getCatalogEntries($accept, $country, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CatalogApi->getCatalogEntries: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **accept** | **string**| hidden-parameter | [optional] [default to &#39;application/json&#39;] |
| **country** | **string**| country iso2 | [optional] |
| **limit** | **int**| A hard limit on the amount of returned values. | [optional] [default to 10] |

### Return type

[**\SLSMF\Client\Model\CatalogJsonInner[]**](../Model/CatalogJsonInner.md)

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
getCatalogEntryByCode($code, $accept): \SLSMF\Client\Model\CatalogJsonInner[]
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
$code = 'SSC-abas'; // string | SSC-code
$accept = 'application/json'; // string | hidden-parameter

try {
    $result = $apiInstance->getCatalogEntryByCode($code, $accept);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CatalogApi->getCatalogEntryByCode: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **code** | **string**| SSC-code | [default to &#39;SSC-abas&#39;] |
| **accept** | **string**| hidden-parameter | [optional] [default to &#39;application/json&#39;] |

### Return type

[**\SLSMF\Client\Model\CatalogJsonInner[]**](../Model/CatalogJsonInner.md)

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
getCatalogEntryByOrganisationAndCode($organisation, $code, $accept): \SLSMF\Client\Model\CatalogJsonInner[]
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
$code = 'abas'; // string | Search the catalog by an external code.
$accept = 'application/json'; // string | hidden-parameter

try {
    $result = $apiInstance->getCatalogEntryByOrganisationAndCode($organisation, $code, $accept);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CatalogApi->getCatalogEntryByOrganisationAndCode: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organisation** | **string**| The source organisation for the provided code. | [default to &#39;ioc&#39;] |
| **code** | **string**| Search the catalog by an external code. | [default to &#39;abas&#39;] |
| **accept** | **string**| hidden-parameter | [optional] [default to &#39;application/json&#39;] |

### Return type

[**\SLSMF\Client\Model\CatalogJsonInner[]**](../Model/CatalogJsonInner.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
