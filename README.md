# SLSMFClient

API of the IOC sealevelmonitoring facility


## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/SLSMFClient/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: ApiKeyAuth
$config = SLSMFClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMFClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMFClient\Api\CatalogApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$country = 'country_example'; // string | country iso2
$limit = 10; // int | Maximum number of records returned per request

try {
    $result = $apiInstance->getCatalogEntries($country, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CatalogApi->getCatalogEntries: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *http://devapi.ioc-sealevelmonitoring.org*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CatalogApi* | [**getCatalogEntries**](docs/Api/CatalogApi.md#getcatalogentries) | **GET** /v2/catalog | Retrieve list of all catalog entries.
*CatalogApi* | [**getCatalogEntryByCode**](docs/Api/CatalogApi.md#getcatalogentrybycode) | **GET** /v2/catalog/{code} | Retrieve specific catalog entry by it&#39;s catalog identifier.
*CatalogApi* | [**getCatalogEntryByOrganisationAndCode**](docs/Api/CatalogApi.md#getcatalogentrybyorganisationandcode) | **GET** /v2/catalog/{organisation}/{code} | Retrieve a specific catalog entry by it&#39;s external identifier.
*OperatorApi* | [**getOperatorById**](docs/Api/OperatorApi.md#getoperatorbyid) | **GET** /v2/operators/{operator_id} | Get fullname of operator by ID.
*OperatorApi* | [**getOperators**](docs/Api/OperatorApi.md#getoperators) | **GET** /v2/operators | List of operators
*ResearchApi* | [**getStationResearchData**](docs/Api/ResearchApi.md#getstationresearchdata) | **GET** /v2/research/stations/{code}/sensors/{sensor}/data | Retrieve quality controlled data for a station with a maximum of 365 days in one request. By default 7 days are retrieved. More documentation on this API can be found on https://github.com/SLSMF/API-Documentation
*SensorApi* | [**getSensors**](docs/Api/SensorApi.md#getsensors) | **GET** /v2/sensors | Retrieve list of sensors.
*StationApi* | [**getLatestStationMessage**](docs/Api/StationApi.md#getlateststationmessage) | **GET** /v2/stations/{code}/message | Retrieve latest message for a station.
*StationApi* | [**getStationByCode**](docs/Api/StationApi.md#getstationbycode) | **GET** /v2/stations/{code} | Retrieve metadata for a station.
*StationApi* | [**getStationData**](docs/Api/StationApi.md#getstationdata) | **GET** /v2/stations/{code}/data | Retrieve data for a station with max 30 day limit or 150 000 records.
*StationApi* | [**getStationPerformance**](docs/Api/StationApi.md#getstationperformance) | **GET** /v2/stations/performance | Retrieve performance info for stations.
*StationApi* | [**getStations**](docs/Api/StationApi.md#getstations) | **GET** /v2/stations | Retrieve all stations.
*StationApi* | [**getStationsMap**](docs/Api/StationApi.md#getstationsmap) | **GET** /v2/stations/map | Retrieve stations map.
*StationApi* | [**getStationsShortlist**](docs/Api/StationApi.md#getstationsshortlist) | **GET** /v2/stations/shortlist | Retrieve stations with limited info.

## Models

- [CatalogJsonInner](docs/Model/CatalogJsonInner.md)
- [OperatorJsonInner](docs/Model/OperatorJsonInner.md)
- [OperatorsJsonInner](docs/Model/OperatorsJsonInner.md)
- [SensorsJsonInner](docs/Model/SensorsJsonInner.md)
- [StationDataJsonInner](docs/Model/StationDataJsonInner.md)
- [StationJsonInner](docs/Model/StationJsonInner.md)
- [StationJsonInnerSensorInner](docs/Model/StationJsonInnerSensorInner.md)
- [StationMessageJsonInner](docs/Model/StationMessageJsonInner.md)
- [StationPerformanceJsonInner](docs/Model/StationPerformanceJsonInner.md)
- [StationResearchDataDetidedJson](docs/Model/StationResearchDataDetidedJson.md)
- [StationResearchDataDetidedJsonDataInner](docs/Model/StationResearchDataDetidedJsonDataInner.md)
- [StationResearchDataJson](docs/Model/StationResearchDataJson.md)
- [StationResearchDataJsonDataInner](docs/Model/StationResearchDataJsonDataInner.md)
- [StationResearchDataJsonPagination](docs/Model/StationResearchDataJsonPagination.md)
- [StationResearchDataPredictedJson](docs/Model/StationResearchDataPredictedJson.md)
- [StationResearchDataPredictedJsonDataInner](docs/Model/StationResearchDataPredictedJsonDataInner.md)
- [StationsJsonInner](docs/Model/StationsJsonInner.md)
- [StationsShortlistJsonInner](docs/Model/StationsShortlistJsonInner.md)
- [TideModelJson](docs/Model/TideModelJson.md)
- [TideModelJsonDataInner](docs/Model/TideModelJsonDataInner.md)

## Authorization

Authentication schemes defined for the API:
### ApiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-KEY
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

info@ioc-sealevelmonitoring.org

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `2.0.0`
    - Generator version: `7.20.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
