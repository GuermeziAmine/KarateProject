Feature: OMNI DealerLocator Service Logic

    Background:
        * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net' + '/preprod'
        * def authResult = call read('auth.feature')
        * def token = authResult.authToken

Scenario: Retrieve all dealer details for a specific geolocal info 

      * def RequestBody = 
        """
        {
            "brand": "string",
            "marketCode": "string",
            "consumer": "string",
            "country": "string",
            "culture": "string",
            "dateDebut": "string",
            "dateFin": "string",
            "agentsExclude": true,
            "agentsExcludeAP": true,
            "brandActivity": "string",
            "criterias": "string",
            "criteriasExclude": "string",
            "department": "string",
            "details": "string",
            "getMultimarque": true,
            "importerCode": "string",
            "importerName": "string",
            "indicatorsActivities": "string",
            "latitude": "string",
            "lcdv2": "string",
            "longitude": "string",
            "minDVN": 0,
            "minPDV": 0,
            "name": "string",
            "pageNumber": 0,
            "pageSize": 0,
            "rMax": 0,
            "rMin": 0,
            "RRDI": "string",
            "rStep": 0,
            "region": "string",
            "resultMax": 0,
            "searchType": "string",
            "siteGeo": "string",
            "sort": "string",
            "unit": "string",
            "viewOnlyAgents": true,
            "viewOnlyAgentsAP": true,
            "withContract": true
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
      
      And header marketCode = 'IT'     
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Retrieve all dealer details  

      * def RequestBody = 
        """
        {
            "country": "FR",
            "culture": "fr",
            "consumer": "DCR.WEB.AC",
            "brand": "AC",
            "brandActivity": "AC",
            "getMultimarque": false,
            "siteGeo": "0000049523"
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
          
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200