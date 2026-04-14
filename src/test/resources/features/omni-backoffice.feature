Feature: OMNI BO Service Logic

    Background:
    
      * print 'Token utilisé pour ce test :', token

Scenario: retrieve  the configurations from the BO

    * def RequestBody = 
      """
      
     {
        "configCode": "DepositAmountRepository",
        "operationType": "search",
        "data": "",
        "sort": {
            "direction": "DESC",
            "colName": ""
        }
        }   
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/backoffice/v1/crud'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = 'DS'
      And header marketCode = 'IT'
      And header languageCode = 'it'
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: retrieve all the configurations from the BO

    * def RequestBody = 
      """
      
     [
        {
            "configCode": "DepositAmountRepository",
            "data": "",
            "sort": {
            "direction": "DESC",
            "colName": ""
            },
            "name": ""
        }
     ]
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/backoffice/v1/bulk-crud'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 500

Scenario: transcoding for the stream market

    * def RequestBody = 
      """
      
     {
    "code": "8104",
    "typeEncoding": "code",
    "data": "{}"
    }
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/backoffice/v1/transcoding-market'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200
Scenario: transcoding for the stream brand

    * def RequestBody = 
      """
      
     {
    "code": "8104",
    "typeEncoding": "code",
    "data": "{}"
    }
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/backoffice/v1/transcoding-brand'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 500
Scenario: transcoding for the stream language

    * def RequestBody = 
      """
      
     {
    "code": "8104",
    "typeEncoding": "code",
    "data": "{}"
    }
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/backoffice/v1/transcoding-language'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 500
Scenario: retrieve the right reservation-extension

    * def RequestBody = 
      """
      
    {
        "market": "",
        "brand": "",
        "extensionType": "",
        "customerType": "",
        "financeType": "",
        "journeyType": "",
        "paymentMethod": ""
    }
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/backoffice/v1/reservation-extension'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200
      
Scenario: retrieve the carlines

    * def RequestBody = 
      """
      
        {
        "market": "",
        "language": "it",
        "brands": [
          "DS"
        ]
        }
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/backoffice/v1/carlines'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post
    
      Then status 200
      
Scenario: retrieve the commercial filters

    * def RequestBody = 
      """ 
            {
        "filterId": 1,
        "bodyStyle": [
            ""
        ],
        "weight": [
            ""
        ],
        "numberOfSeats": [
            ""
        ],
        "height": [
            ""
        ],
        "length": [
            ""
        ]
        }
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/backoffice/v1/lcv-filters'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post
    
      Then status 200                       
Scenario: Export all data for some specific repository

    * def RequestBody = 
      """ 
        {
        "repositoryName": "PreBuildLocalAccessoriesQuantityRepository"
        }
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/backoffice/v1/data/export'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'    
      And header Content-Type = 'application/json'

      And header brandCode = 'DS'
      And header marketCode = 'IT'
      And header languageCode = 'it'
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post
    
      Then status 500 
             