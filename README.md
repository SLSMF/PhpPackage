# SLSMFClient

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
require_once('/path/to/SLSMFClient/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: ApiKeyAuth
$config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = SLSMF\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');


$apiInstance = new SLSMF\Client\Api\AdminApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$sensor_id = 308; // int | Sensor ID
$start_date = '2026-10-14'; // string | From date, included in result, format 'YYYY-MM-DD'
$stop_date = '2026-10-22'; // string | Until date, not included in result, format 'YYYY-MM-DD'

try {
    $result = $apiInstance->getResearchMetadata_0($sensor_id, $start_date, $stop_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminApi->getResearchMetadata_0: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *http://devapi.ioc-sealevelmonitoring.org*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AdminApi* | [**getResearchMetadata_0**](docs/Api/AdminApi.md#getresearchmetadata_0) | **GET** /v2.1/research/metadata/{sensor_id} | Retrieve daily metadata records from the research collection.
*AdminApi* | [**getStationHistory**](docs/Api/AdminApi.md#getstationhistory) | **GET** /v2.1/stations/{station_code}/history | Retrieve metadata for a station.
*AdminApi* | [**getStationSensorConstituents_0**](docs/Api/AdminApi.md#getstationsensorconstituents_0) | **GET** /v2.1/research/stations/{station_code}/sensors/{sensor}/tidal-harmonics | **Experimental** Retrieve tide model data of sensor.
*AdminApi* | [**getStationSensorPredictions_0**](docs/Api/AdminApi.md#getstationsensorpredictions_0) | **GET** /v2.1/research/stations/{station_code}/sensors/{sensor}/tidal-harmonics/predictions/data | **Experimental** Retrieve sea level predictions based on latest tide model of the sensor. Maximum 365 days in one request. By default next day is retrieved.
*AdminApi* | [**getStationSensorResearchDataDetidedTD_0**](docs/Api/AdminApi.md#getstationsensorresearchdatadetidedtd_0) | **GET** /v2.1/research/stations/{station_code}/sensors/{sensor}/tidal-harmonics/data | **Experimental** Retrieve detided data for a station with a maximum of 365 days in one request. By default 7 days are retrieved.
*CatalogApi* | [**getCatalogEntries**](docs/Api/CatalogApi.md#getcatalogentries) | **GET** /v2.1/catalog | Retrieve list of all catalog entries.
*CatalogApi* | [**getCatalogEntryByCode**](docs/Api/CatalogApi.md#getcatalogentrybycode) | **GET** /v2.1/catalog/{ssc_code} | Retrieve specific catalog entry by it&#39;s catalog identifier.
*CatalogApi* | [**getCatalogEntryByOrganisationAndCode**](docs/Api/CatalogApi.md#getcatalogentrybyorganisationandcode) | **GET** /v2.1/catalog/{organisation}/{external_code} | Retrieve a specific catalog entry by it&#39;s external identifier.
*OperatorApi* | [**getOperatorById**](docs/Api/OperatorApi.md#getoperatorbyid) | **GET** /v2.1/operators/{operator_id} | Get fullname of operator by ID.
*OperatorApi* | [**getOperators**](docs/Api/OperatorApi.md#getoperators) | **GET** /v2.1/operators | List of operators
*ResearchApi* | [**getResearchMetadata**](docs/Api/ResearchApi.md#getresearchmetadata) | **GET** /v2.1/research/metadata/{sensor_id} | Retrieve daily metadata records from the research collection.
*ResearchApi* | [**getStationResearchData**](docs/Api/ResearchApi.md#getstationresearchdata) | **GET** /v2.1/research/stations/{station_code}/sensors/{sensor}/data | Retrieve quality controlled data for a station with a maximum of 365 days in one request. By default 7 days are retrieved. More documentation on this API can be found on https://github.com/SLSMF/API-Documentation
*ResearchApi* | [**getStationSensorConstituents**](docs/Api/ResearchApi.md#getstationsensorconstituents) | **GET** /v2.1/research/stations/{station_code}/sensors/{sensor}/tidal-harmonics | **Experimental** Retrieve tide model data of sensor.
*ResearchApi* | [**getStationSensorPredictions**](docs/Api/ResearchApi.md#getstationsensorpredictions) | **GET** /v2.1/research/stations/{station_code}/sensors/{sensor}/tidal-harmonics/predictions/data | **Experimental** Retrieve sea level predictions based on latest tide model of the sensor. Maximum 365 days in one request. By default next day is retrieved.
*ResearchApi* | [**getStationSensorResearchDataDetidedTD**](docs/Api/ResearchApi.md#getstationsensorresearchdatadetidedtd) | **GET** /v2.1/research/stations/{station_code}/sensors/{sensor}/tidal-harmonics/data | **Experimental** Retrieve detided data for a station with a maximum of 365 days in one request. By default 7 days are retrieved.
*StationApi* | [**getLatestStationMessage**](docs/Api/StationApi.md#getlateststationmessage) | **GET** /v2.1/stations/{station_code}/message | Retrieve last messages for a station.
*StationApi* | [**getStationByCode**](docs/Api/StationApi.md#getstationbycode) | **GET** /v2.1/stations/{station_code} | Retrieve metadata for a station.
*StationApi* | [**getStationData**](docs/Api/StationApi.md#getstationdata) | **GET** /v2.1/stations/{station_code}/data | Retrieve data of a station with max 30 day limit or 150 000 records.
*StationApi* | [**getStationPerformance**](docs/Api/StationApi.md#getstationperformance) | **GET** /v2.1/stations/{station_code}/performance | Retrieve performance info of a station.
*StationApi* | [**getStations**](docs/Api/StationApi.md#getstations) | **GET** /v2.1/stations | Retrieve metadata of all stations.
*StationApi* | [**getStationsMap**](docs/Api/StationApi.md#getstationsmap) | **GET** /v2.1/stations/map | Retrieve stations map.
*StationApi* | [**getStationsPerformance**](docs/Api/StationApi.md#getstationsperformance) | **GET** /v2.1/stations/performance | Retrieve performance info of all stations.
*StationApi* | [**getStationsShortlist**](docs/Api/StationApi.md#getstationsshortlist) | **GET** /v2.1/stations/shortlist | Retrieve limited metadata of all stations.

## Models

- [CatalogEntry](docs/Model/CatalogEntry.md)
- [CatalogEntryGlossIdInner](docs/Model/CatalogEntryGlossIdInner.md)
- [CatalogEntryPsmslIdInner](docs/Model/CatalogEntryPsmslIdInner.md)
- [CatalogEntryPtwcIdInner](docs/Model/CatalogEntryPtwcIdInner.md)
- [CatalogEntrySonelGpsIdInner](docs/Model/CatalogEntrySonelGpsIdInner.md)
- [CatalogEntrySonelTgIdInner](docs/Model/CatalogEntrySonelTgIdInner.md)
- [CatalogEntryUhslcIdInner](docs/Model/CatalogEntryUhslcIdInner.md)
- [GetResearchMetadata200Response](docs/Model/GetResearchMetadata200Response.md)
- [GetResearchMetadata200ResponseDataInner](docs/Model/GetResearchMetadata200ResponseDataInner.md)
- [MapGmlGmlFeatureMemberInner](docs/Model/MapGmlGmlFeatureMemberInner.md)
- [MapGmlGmlFeatureMemberInnerGmlPoint](docs/Model/MapGmlGmlFeatureMemberInnerGmlPoint.md)
- [MapKmlDocument](docs/Model/MapKmlDocument.md)
- [MapKmlDocumentPlacemarkInner](docs/Model/MapKmlDocumentPlacemarkInner.md)
- [MapKmlDocumentPlacemarkInnerPoint](docs/Model/MapKmlDocumentPlacemarkInnerPoint.md)
- [MapKmlDocumentStyleInner](docs/Model/MapKmlDocumentStyleInner.md)
- [MapKmlDocumentStyleInnerIconStyle](docs/Model/MapKmlDocumentStyleInnerIconStyle.md)
- [MapKmlDocumentStyleInnerIconStyleIcon](docs/Model/MapKmlDocumentStyleInnerIconStyleIcon.md)
- [Operator](docs/Model/Operator.md)
- [OperatorsInner](docs/Model/OperatorsInner.md)
- [PaginationJson](docs/Model/PaginationJson.md)
- [Station](docs/Model/Station.md)
- [StationAssociatedStationsInner](docs/Model/StationAssociatedStationsInner.md)
- [StationDataInner](docs/Model/StationDataInner.md)
- [StationMessageInner](docs/Model/StationMessageInner.md)
- [StationMessageInnerStationsInner](docs/Model/StationMessageInnerStationsInner.md)
- [StationPerformance](docs/Model/StationPerformance.md)
- [StationPerformanceSensorsInner](docs/Model/StationPerformanceSensorsInner.md)
- [StationResearchDataDetidedJson](docs/Model/StationResearchDataDetidedJson.md)
- [StationResearchDataDetidedJsonDataInner](docs/Model/StationResearchDataDetidedJsonDataInner.md)
- [StationResearchDataJson](docs/Model/StationResearchDataJson.md)
- [StationResearchDataJsonDataInner](docs/Model/StationResearchDataJsonDataInner.md)
- [StationResearchDataPredictedJson](docs/Model/StationResearchDataPredictedJson.md)
- [StationResearchDataPredictedJsonDataInner](docs/Model/StationResearchDataPredictedJsonDataInner.md)
- [StationResearchMetaData](docs/Model/StationResearchMetaData.md)
- [StationSensorsInner](docs/Model/StationSensorsInner.md)
- [StationsInner](docs/Model/StationsInner.md)
- [StationsInnerAssociatedStationsInner](docs/Model/StationsInnerAssociatedStationsInner.md)
- [StationsInnerSensorsInner](docs/Model/StationsInnerSensorsInner.md)
- [StationsShortlistInner](docs/Model/StationsShortlistInner.md)
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

- API version: `2.1.0`
    - Generator version: `7.9.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
