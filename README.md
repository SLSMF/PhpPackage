# PhpSLSMF

API of the IOC sealevelmonitoring facility


## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

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
require_once('/path/to/PhpSLSMF/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: ApiKeyAuth
$config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\\Client\Api\CatalogApi(
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

## API Endpoints

All URIs are relative to *http://api.sealevelmonitoring.local*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CatalogApi* | [**getCatalogEntries**](docs/Api/CatalogApi.md#getcatalogentries) | **GET** /v2/catalog | Retrieve list of all catalog entries.
*CatalogApi* | [**getCatalogEntryByCode**](docs/Api/CatalogApi.md#getcatalogentrybycode) | **GET** /v2/catalog/{code} | Retrieve specific catalog entry by it&#39;s catalog identifier.
*CatalogApi* | [**getCatalogEntryByOrganisationAndCode**](docs/Api/CatalogApi.md#getcatalogentrybyorganisationandcode) | **GET** /v2/catalog/{organisation}/{code} | Retrieve a specific catalog entry by it&#39;s external identifier.
*OperatorApi* | [**getOperatorById**](docs/Api/OperatorApi.md#getoperatorbyid) | **GET** /v2/operators/{operator_id} | Get fullname of operator by ID.
*OperatorApi* | [**getOperators**](docs/Api/OperatorApi.md#getoperators) | **GET** /v2/operators | List of operators
*ResearchApi* | [**getStationResearchData**](docs/Api/ResearchApi.md#getstationresearchdata) | **GET** /v2/research/stations/{code}/sensors/{sensor}/data | Retrieve data for a station max 3650 days in one request. By default 7 days are retrieved. Days with low completeness (&lt;30%), low distinctness (&lt;10%) or with a detected shift are removed in any case.
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
- [CatalogXml](docs/Model/CatalogXml.md)
- [CatalogXmlStationInner](docs/Model/CatalogXmlStationInner.md)
- [MapGmlXml](docs/Model/MapGmlXml.md)
- [MapGmlXmlGmlFeatureMemberInner](docs/Model/MapGmlXmlGmlFeatureMemberInner.md)
- [MapGmlXmlGmlFeatureMemberInnerGmlPoint](docs/Model/MapGmlXmlGmlFeatureMemberInnerGmlPoint.md)
- [MapKmlXml](docs/Model/MapKmlXml.md)
- [MapKmlXmlDocument](docs/Model/MapKmlXmlDocument.md)
- [MapKmlXmlDocumentPlacemarkInner](docs/Model/MapKmlXmlDocumentPlacemarkInner.md)
- [MapKmlXmlDocumentPlacemarkInnerPoint](docs/Model/MapKmlXmlDocumentPlacemarkInnerPoint.md)
- [MapKmlXmlDocumentStyleInner](docs/Model/MapKmlXmlDocumentStyleInner.md)
- [MapKmlXmlDocumentStyleInnerIconStyle](docs/Model/MapKmlXmlDocumentStyleInnerIconStyle.md)
- [MapKmlXmlDocumentStyleInnerIconStyleIcon](docs/Model/MapKmlXmlDocumentStyleInnerIconStyleIcon.md)
- [OperatorJsonInner](docs/Model/OperatorJsonInner.md)
- [OperatorXml](docs/Model/OperatorXml.md)
- [OperatorXmlOperatorInner](docs/Model/OperatorXmlOperatorInner.md)
- [OperatorsJsonInner](docs/Model/OperatorsJsonInner.md)
- [OperatorsXml](docs/Model/OperatorsXml.md)
- [OperatorsXmlOperatorInner](docs/Model/OperatorsXmlOperatorInner.md)
- [SensorsJsonInner](docs/Model/SensorsJsonInner.md)
- [SensorsXml](docs/Model/SensorsXml.md)
- [SensorsXmlSensorInner](docs/Model/SensorsXmlSensorInner.md)
- [StationDataJsonInner](docs/Model/StationDataJsonInner.md)
- [StationDataXml](docs/Model/StationDataXml.md)
- [StationDataXmlSample](docs/Model/StationDataXmlSample.md)
- [StationJsonInner](docs/Model/StationJsonInner.md)
- [StationJsonInnerSensorInner](docs/Model/StationJsonInnerSensorInner.md)
- [StationMessageJsonInner](docs/Model/StationMessageJsonInner.md)
- [StationMessageXml](docs/Model/StationMessageXml.md)
- [StationMessageXmlResponseInner](docs/Model/StationMessageXmlResponseInner.md)
- [StationPerformanceJsonInner](docs/Model/StationPerformanceJsonInner.md)
- [StationPerformanceXml](docs/Model/StationPerformanceXml.md)
- [StationPerformanceXmlStationInner](docs/Model/StationPerformanceXmlStationInner.md)
- [StationResearchDataDetidedJsonInner](docs/Model/StationResearchDataDetidedJsonInner.md)
- [StationResearchDataDetidedJsonInnerDataInner](docs/Model/StationResearchDataDetidedJsonInnerDataInner.md)
- [StationResearchDataJsonInner](docs/Model/StationResearchDataJsonInner.md)
- [StationResearchDataJsonInnerDataInner](docs/Model/StationResearchDataJsonInnerDataInner.md)
- [StationResearchDataJsonInnerPagination](docs/Model/StationResearchDataJsonInnerPagination.md)
- [StationResearchDataPredictedJsonInner](docs/Model/StationResearchDataPredictedJsonInner.md)
- [StationResearchDataPredictedJsonInnerDataInner](docs/Model/StationResearchDataPredictedJsonInnerDataInner.md)
- [StationXml](docs/Model/StationXml.md)
- [StationXmlSensorInner](docs/Model/StationXmlSensorInner.md)
- [StationsJsonInner](docs/Model/StationsJsonInner.md)
- [StationsShortlistJsonInner](docs/Model/StationsShortlistJsonInner.md)
- [StationsShortlistXml](docs/Model/StationsShortlistXml.md)
- [StationsShortlistXmlStationInner](docs/Model/StationsShortlistXmlStationInner.md)
- [StationsXml](docs/Model/StationsXml.md)
- [StationsXmlStationInner](docs/Model/StationsXmlStationInner.md)
- [TideModelJsonInner](docs/Model/TideModelJsonInner.md)
- [TideModelJsonInnerDataInner](docs/Model/TideModelJsonInnerDataInner.md)

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
    - Generator version: `7.8.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
