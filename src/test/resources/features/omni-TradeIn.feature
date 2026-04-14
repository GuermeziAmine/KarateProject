Feature: OMNI TradeIn Service Logic

  Background:
    # On sauvegarde l'URL de base pour la réutiliser après l'appel local
    * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net' + '/dev'
    * def authResult = call read('auth.feature')
    * def token = authResult.authToken
Scenario: Retrieve Vehicule Information based on VIN
         
      
      Given url omniUrl
      And path '/trade-in/v1/autobiz/car-details/vin/AT'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = '83'
      And header marketCode = '3103'
      And header languageCode = '3'
      And header x-trace-id = 'karate-test-12345'
      
      When method Get

      Then status 401

Scenario: Retrieve manual vehicle referentials from Autobiz

      * def RequestBody = 
      """
     {    "key": "makes",   
          "makeId": ""
     }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/trade-in/v1/autobiz/referentials/manual'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header languageCode = 'it'
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Retrieve vehicle information using license plate number

      * def RequestBody = 
      """
        {
            "market":{
                "code":"3103",
                "desc":"AT" },
            "registration":"assgsffda"
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/trade-in/v1/autobiz/plate-number/information'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum

      
      And request RequestBody
      When method post

      Then status 401

Scenario: Update vehicle valuation using car-check ID

      * def RequestBody = 
      """
            {
                "newCarBrand": "Alfa Romeo",
                "newCarModel": "Giulia",
                "offerId": "0ZWsiaX7",
                "expectedDeliveryDate": "2024-02-02 00:00:00",
                "fcoId": null,
                "idFirm": 3805
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/trade-in/v1/autobiz/valuation-by-edd/15A464F50'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum

      
      And request RequestBody
      When method put

      Then status 200

Scenario: Perform an vehicle valuation via Autobiz

      * def RequestBody = 
      """
            {
                "expectedDeliveryDate": "2024-07-03",
                "mopId": "NjU1ZGRmZGI1ZjBmMTE3MDZjNTcxNWNh",
                "newCarBrand": "Alfa Romeo",
                "newCarModel": "Tonale"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/trade-in/v1/autobiz/valuation-online'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header brandCode = '83'
      And header marketCode = '3103'
      And header languageCode = '2'
      And header valuationKey = 'cf9708ef7629a348de9b492988811cd81d2c6a5f'
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Clone an existing online vehicle valuation

      * def RequestBody = 
      """
            {
                "expectedDeliveryDate": "2024-07-03",
                "mopId": "NjU1ZGRmZGI1ZjBmMTE3MDZjNTcxNWNh",
                "newCarBrand": "Alfa Romeo",
                "newCarModel": "Tonale"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/trade-in/v1/autobiz/clone/valuation-online'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header brandCode = '83'
      And header marketCode = '3103'
      And header languageCode = '2'
      And header valuationKey = 'cf9708ef7629a348de9b492988811cd81d2c6a5f'
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Retrieve trade-in quotation journey details

      * def RequestBody = 
      """
            {
            "configurationCode": "string",
            "market": "3103",
            "brand": "GG"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/trade-in/v1/quotation/journey-details'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'
    
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 400

Scenario: Retrieve a token for Autobiz valuation
         
      
      Given url omniUrl
      And path '/trade-in/v1/autobiz/valuation-token'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = '83'
      And header marketCode = '3103'
      And header languageCode = '2'
      And header valuationKey = 'cf9708ef7629a348de9b492988811cd81d2c6a5f'
      And header x-trace-id = 'karate-test-12345'
      
      When method Get

      Then status 404

Scenario: Process a trade-in conversion

      * def RequestBody = 
      """
            {
            "conversionOrderId": "string",
            "brandId": "string",
            "dealerId": "string",
            "lcdv": "string",
            "optionCode": [
                "string"
            ]
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/trade-in/v1/conversion'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'
    
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404