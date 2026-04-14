Feature: OMNI MOP Service Logic

    Background:
        * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net' + '/preprod'
        * def authResult = call read('auth.feature')
        * def token = authResult.authToken
Scenario: Create a new MOP

   * def RequestBody = 
        """
           
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/mop/v1/create'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 500
Scenario: Update a MOP

   * def RequestBody = 
        """
           {
        "brand": "83",
        "country": "AT",
        "mopId": "NjRmMDY3MDZjY2Y1ODI3ZmZlNGNiMzcz",
        "sourceName": "OMNI",
        "financeFile": {
            "statusId": "4"
    }
    
}
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/mop/v1/update'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Add payment details to a specific MOP

   * def RequestBody = 
        """
    {
        "brand": "83",
        "country": "AT",
        "sourceName": "string",
        "payment": {
            "psaPayId": "string",
            "amount": "string",
            "type": "string",
            "pspStatus": "string",
            "pspStatusLabel": "string"
        }
        }
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/mop/v1/NjhkMTAwYjJiOTk4MTE0ZmZjMDUwMDdm/payments/add'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: update payment details to a specific MOP

   * def RequestBody = 
        """
    {
        "brand": "83",
        "country": "AT",
        "sourceName": "string",
        "payment": {
            "psaPayId": "string",
            "amount": "string",
            "type": "string",
            "pspStatus": "string",
            "pspStatusLabel": "string"
        }
        }
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/mop/v1/NjhkMTAwYjJiOTk4MTE0ZmZjMDUwMDdm/payments/update'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Retrieve details of a MOP 

   * def RequestBody = 
        """
    {
        "brand": "FT",
        "country": "AT",
        "mopId": "NjhkMTAwYjJiOTk4MTE0ZmZjMDUwMDdm"
    }
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/mop/v1/read'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Clone an existing MOP 

   * def RequestBody = 
        """
    {
        "brand": "FT",
        "country": "AT",
        "mopId": "NjhkMTAwYjJiOTk4MTE0ZmZjMDUwMDdm" , 
        "cancelationReason": "PRODUCT_DEFINITION_CHANGE"
    }
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/mop/v1/clone'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Save part-exchange details to the MOP

   * def RequestBody = 
        """
        {
        "brand": "FT",
        "language": "",
        "country": "AT",
        "mopId": "NjhkMTAwYjJiOTk4MTE0ZmZjMDUwMDdm"  ,     
        "source": "",
        "nrmRecordId": "",
        "idFirm": "",
        "newCarBrand": "",
        "newCarModel": "",
        "expectedDeliveryDate": "2026-04-05"
        }
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/mop/v1/savepx'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header x-trace-id = 'karate-test-12345'
      And header brandCode = 'FT'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Update a specific sub-object of a MOP 

   * def RequestBody = 
        """
   {
        "collectionPath": "adminFilesCollection",
        "action": "update",
        "brand": "FT",
        "country": "AT",
        "mopId": "NjhkMTAwYjJiOTk4MTE0ZmZjMDUwMDdm",
        "sourceName": "",
        "filter": "[{code:DEL}]",
        "data": "[{netPrice:1}]"
     }
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/mop/v1/update-object'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 400
 
Scenario: Update profiling cookies for a MOP 

   * def RequestBody = 
        """
    {
        "brand": "FT",
        "country": "AT",
        "mopId": "NjhkMTAwYjJiOTk4MTE0ZmZjMDUwMDdm" , 
        "cookie": "string"
    }
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/mop/v1/profiling-cookies/update'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Remove a specific sub-object from the MOP

   * def RequestBody = 
        """
      {
        "mopId": "NjhkMTAwYjJiOTk4MTE0ZmZjMDUwMDdm",
        "objectNames": [
            "partExchange"
        ]
        }

       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/mop/v1/remove-object'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header brandCode = 'FT'
      And header marketCode = 3103
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Search for existing MOP using filters

        * def RequestBody = 
            """
            {
            "filter": {
                    "brand": "GG",
                    "country": "BE",
                    "creationSourceName": [
                        "OMNI",
                        "OPV"
                    ],
                "administrativeFile": {
                "OMSId": "string",
                "deliveryDate": {
                    "interval": {
                    "from": null,
                    "to": null
                    },
                    "expr": {
                    "exists": true
                    }
                },
                "fcoCancelationDate": {
                    "interval": {
                    "from": null,
                    "to": null
                    },
                    "expr": {
                    "exists": true
                    }
                },
                "orderFormCancelation": {
                    "status": [
                    "TO_BE_VALIDATED"
                    ]
                },
                "arrivalAtMarketCompoundDate": {
                    "interval": {
                    "from": null,
                    "to": null
                    }
                },
                "confirmedArrivalAtDealershipDate": {
                    "interval": {
                    "from": null,
                    "to": null
                    }
                },
                "postOrderModification": {
                    "status": [
                    "TO_BE_VALIDATED"
                    ],
                    "numberOfTries": 0,
                    "requestReasonExplanation": "string",
                    "refusalReasonExplanation": "string"
                },
                "CAFNum": "string",
                "CARNum": "string",
                "CCFNum": "string",
                "VIN": "string"
                },
                "userProfile": {
                "firstname": "string",
                "lastname": "string",
                "companyName": "string",
                "email": "string",
                "companyContact": {
                    "professionalEmail": "string"
                }
                },
                "dealer": {
                "siteGeo": "string",
                "sincom": "string",
                "siteCode": "string",
                "RRDICode": "string"
                },
                "onlineOrderForm": {
                "idOrder": "string",
                "statusId": [
                    "string"
                ]
                },
                "newCar": {
                "derivedModelLabel": "string",
                "externalColor": {
                    "label": "string"
                },
                "finalCarDefinition": {
                    "validityCheckStatus": [
                    "string"
                    ]
                },
                "genericCarConfig": "string"
                },
                "pricingChangeParentMopId": "string",
                "pricingChange": {
                "status": [
                    "TO_BE_VALIDATED"
                ]
                }
            },
            "extra": {
                "onlyCount": true,
                "anonymize": true,
                "fullData": true,
                "lightSerializedObject": true,
                "perPage": 0,
                "page": 0
            },
            "sort": {
                "field": "string",
                "order": "string"
            }
            }
        """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/mop/v1/search'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200