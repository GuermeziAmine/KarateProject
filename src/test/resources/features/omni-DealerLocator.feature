Feature: OMNI DealerLocator Service Logic

  Background:
    
    * def authResult = callonce read('auth.feature')
    * def token = authResult.authToken
Scenario: Retrieve all dealer details for a specific geolocal info

      * def RequestBody =
        """
       {
    "consumer": "DCR.WEB.AC",
    "country": "IT",
    "culture": "it",
    "criterias": "VN",
    "criteriasExclude": "0",
    "details": "max",
    "latitude": 44.837789,
    "longitude": -0.5791799999999512,
    "rMax": 200000,
    "resultMax": 50,
    "sort": "distance",
    "unit": "km",
    "brand": "83"

      }

        """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum  
      Given url omniUrl
      And path '/dealer/v1/retrieves'
    
      And header Authorization = 'Bearer ' + token

      And header Accept = 'application/json'

      And header Content-Type = 'application/json'    

      And header brandCode = 83
      And header marketCode = 3104
      And header languageCode = 3  
      And header x-trace-id = 'karate-test-12345'
      And header x-country-id = generatedChecksum    
      And request RequestBody
      When method post

      Then status 200

Scenario: Retrieve all dealer details  

      * def RequestBody = 
        """
      {
      "brand":"SS",
      "consumer":"OMNI",
      "country":"BE",
      "culture":"fr",
      "siteGeo":"0000062777"
      }
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/dealer/v1/details'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'    

      And header brandCode = 83
      And header marketCode = 3104
      And header languageCode = 3      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200