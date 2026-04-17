@ignore
Feature: OMNI Authentication

  Background:
    * url 'https://api-noprod.omnichannel-stage.np.stla-aws.net'
    * configure headers = { 'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36' }

  Scenario: Retrieve OAuth2 Token
    Given path '/preprod/oauth2/v1/token'
    And header Accept = '*/*'
    And header Content-Type = 'application/json'
    And header Authorization = 'Basic MmM1NDA5YmEtN2Q3Yi00YzIzLWE4MTMtMzIwYWJlZDVmOGQxOlNhMzdGczRMbkRkR3Rqb0NPVUlJM204WEgzcEFuczVFN29QbmdiYzNWcmpFQVg1ZEd3'
    And request { "grantType": "client_credentials", "scope": "read" }
    When method post
    Then status 200

    # FIX: Use 'accessToken' (camelCase) to match the OMNI server response
    * def authToken = response.accessToken
    * print 'Generated Token Check:', authToken