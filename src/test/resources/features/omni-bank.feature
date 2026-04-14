Feature: OMNI Bank Service Logic

     Background:
   
    * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net' + '/dev'
    * def authResult = call read('auth.feature')
    * def token = authResult.authToken

Scenario: Create a new payment V1

    * def RequestBody = 
      """
      
            {
            "clientid": "ea4aa2fc-f9c8-42d4-982c-2b3ee5d5bc0f",
            "merchantBrand": "00",
            "taxes": "22",
            "CD3_RRDICode": "OMNISINCON",
            "sellingPointId": "OMNI_SP",
            "eBoutiqueId": "OMNI",
            "CD2_eShopOrderID": "000000082",
            "champ5": "dd",
            "country": "IT",
            "amount": "1000",
            "currency": "EUR",
            "language": "IT",
            "email": "test@testmail.com",
            "ownerZip": "50142",
            "ownerTown": "Firenze",
            "accepturl": "www.google.com/accept",
            "cancelurl": "www.google.com/cancel",
            "additionalInformation": "test transaction",
            "operation": "SALE",
            "description": "description of test sale",
            "firstname": "acnname",
            "lastname": "acnlastname",
            "streetaddress": "acn street",
            "streetaddress2": "acn street 2",
            "shipto_firstname": "acn shipto name",
            "shipto_lastname": "acn shipto lastname",
            "shipto_streetaddress": "acn shipto address",
            "shipto_streetaddress2": "acn shipto address 2",
            "shipto_city": "acn shipto city",
            "shipto_state": "acn shipto state",
            "shipto_zipcode": "acn shipto zipcode",
            "shipto_country": "acn shipto country",
            "Infos3DS": null
        }   
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/bank/v1/secure-payment-parameters/Cy3YVrWScYvmjrzZcFNoECLZVByM7g8V'

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

      Then status 500

Scenario: Create a new payment V2

    * def RequestBody = 
      """
 {
                "shipping": {
                    "name": "string",
                    "phone": "string",
                    "city": "string",
                    "country": "IT",
                    "line1": "string",
                    "line2": "string",
                    "postalCode": "string"
                },
                "eshopOrderRef": "string",
                "country": "IT",
                "currency": "EU",
                "brand": "string",
                "description": "string",
                "returnUrl": "string",
                "autoCapture": true,
                "splitPayout": true,
                "metadata": {
                    "additionalProp1": "string",
                    "additionalProp2": "string",
                    "additionalProp3": "string"
                },
                "statementDescriptorSuffix": "string",
                "offSession": true
  }   
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/bank/v1/epayment/v2/secure-payment-parameters/Cy3YVrWScYvmjrzZcFNoECLZVByM7g8V'

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

      Then status 400

Scenario: Get Refund
         
      
      Given url omniUrl
      And path '/bank/v1/refund/NjRmMDY3MDZjY2Y1ODI3ZmZlNGNiMzcz'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = 'DS'
      And header marketCode = 'IT'
      And header languageCode = 'it'
      And header x-trace-id = 'karate-test-12345'
      
      When method Get

      Then status 404

 Scenario: Retrieves payment details for a transaction

      * def RequestBody = 
      """
      {
        "quotationCode": "Cy3YVrWScYvmjrzZcFNoECLZVByM7g8V"
      }
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/bank/v1/payment-details'

     
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

      Then status 500

Scenario: Get Merchants
         
      
      Given url omniUrl
      And path '/bank/v1/merchants'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = 'DS'
      And header marketCode = 'IT'
      And header languageCode = 'it'
      And header x-trace-id = 'karate-test-123'
      
      When method Get

      Then status 200