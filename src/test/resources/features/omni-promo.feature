Feature: OMNI Promo  Service Logic


Scenario: Retrieve the list of Level 2 Delegation grid discounts for B2B accounts  

      * def RequestBody = 
      """
            {
            "brand": "57",
            "criteria": [
                {
                    "vehicle": {
                        "mvss": "686N2H3"
                    }
                }
            ],
            "culture": "fr-BE",
            "customer": "B2B",
            "showCriteria": true
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/promo/v1/basket/delegation-grids'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Retrieve  accessibles sales protocols for a customer  

      * def RequestBody = 
      """
       {
            "processData": {
                "timestamp": "1990-05-15T16:00:00+00:00"
            },
            "dealerData": {
                "dealerId": "004640"
            },
            "clientData": {
                "nationalIdentifier": "442876470",
                "country": "FR",
                "brand": "AP"
            },
            "modelSelector": {
                "version": null,
                "carFamily": null
            },
            "webServiceResults": {
                "sendOnlyCarFamilies": true,
                "sendDiscountOnOptions": false,
                "sendLeasersOfProtocol": false
            }
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/promo/v1/customer/protocols'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Retrieve offer voucher

      * def RequestBody = 
      """
        {
            "useId": "string",
            "action": "ADD_BASKET",
            "amount": 0,
            "valid": true,
            "appVersion": "string",
            "brand": "string",
            "locale": "string",
            "id": "string"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/promo/v1/coupon-counter-update'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 403

