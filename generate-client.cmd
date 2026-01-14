REM Generate new OpenAPI code
REM openapi-generator-cli template -g php
openapi-generator-cli generate -i http://api.sealevelmonitoring.local/v2/doc/json -g php -c php-config.json --git-user-id="SLSMF" --git-repo-id="PhpPackage"
