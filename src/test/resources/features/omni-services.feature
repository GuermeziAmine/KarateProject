Feature: OMNI Services Logic

Background:
    
    * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net' + '/dev'
    * def authResult = call read('auth.feature')
    * def token = authResult.authToken
Scenario: Returns the service contract family compatibility

      * def RequestBody = 
      """
            {
            "market": "1000",
            "familyCode": "T99"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/family-compatibility'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Returns the service contract family

      * def RequestBody = 
      """
                  {
                  "brand": "83",
                  "country": "AT",
                  "customerType": "B2C",
                  "dealerCode": "0103250",
                  "fuelType": "03",
                  "garageDealerCode": "0170250",
                  "journey": "online",
                  "language": "de",
                  "market": "3103",
                  "modelYear": "2023",
                  "optionals": "",
                  "planSaleDate": "2023-07-31",
                  "saleType": "DLR",
                  "sourceSale": "FGA",
                  "userJourney": "online",
                  "vehicleCode": "630PRP4"
                  }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/family'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Returns the service contract plans related to family service selected

      * def RequestBody = 
      """
        {
            "market": "3103",
            "planSaleDate": "2026-04-09",
            "dealerCode": "0103250",
            "garageDealerCode": "0170250",
            "language": "de",
            "country": "AT",
            "sourceSale": "FGA",
            "userJourney": "online",
            "journey": "online",
            "fuelType": "03",
            "modelYear": "2023",
            "vehicleCode": "630PRP4",
            "brand": "83",
            "optionals": "",
            "customerType": "B2C",
            "saleType": "DLR",
            "familyCode": "3R1",
            "defaultPlanCode": "345",
            "planCategory": "",
            "planDurey": 0,
            "planMileage": 0
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/plans'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Returns the service contract family compatibility

      * def RequestBody = 
      """
        {
            "market": "3103",
            "planSaleDate": "2026-04-09",
            "dealerCode": "0103250",
            "garageDealerCode": "0170250",
            "language": "de",
            "country": "AT",
            "sourceSale": "FGA",
            "userJourney": "online",
            "journey": "online",
            "fuelType": "03",
            "modelYear": "2023",
            "vehicleCode": "630PRP4",
            "brand": "83",
            "optionals": "",
            "customerType": "B2C",
            "saleType": "DLR",
            "familyCode": "3R1",
            "defaultPlanCode": "345",
            "planCategory": "",
            "planDurey": 0,
            "planMileage": 0
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/optionals'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 500

Scenario: Retrieve the connected services for a current vehicleCode

      * def RequestBody = 
      """
       {
            "BMVSS": "string",
            "dealer": "string",
            "salesChannel": "string",
            "trim": "string",
            "soldThroughSource": "string",
            "salesCluster2": "string",
            "modelYear": "string",
            "engineType": "string",
            "radioCapacity": "string",
            "package": "string",
            "language": "fr-FR",
            "country": "AT",
            "contextLcdvOnly": {
            "LCDV16": "string",
            "interiorTrim": "string",
            "exteriorTrim": "string",
            "categories": [
                  "string"
            ],
            "optionalAttributes": [
                  "string"
            ],
            "store": {
                  "origin": "DS, AP, AC, OV",
                  "location": "FR",
                  "channel": "WEB",
                  "audience": "B2C",
                  "culture": "fr-FR"
            },
            "vin": "string"
            }
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/630PRP4/connected-services'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 400

Scenario: Retrieve cross-functional connected services for a vehicle

      * def RequestBody = 
      """
       {
            "BMVSS": "string",
            "dealer": "string",
            "salesChannel": "string",
            "trim": "string",
            "soldThroughSource": "string",
            "salesCluster2": "string",
            "modelYear": "string",
            "engineType": "string",
            "radioCapacity": "string",
            "package": "string",
            "language": "fr-FR",
            "country": "AT",
            "contextLcdvOnly": {
            "LCDV16": "string",
            "interiorTrim": "string",
            "exteriorTrim": "string",
            "categories": [
                  "string"
            ],
            "optionalAttributes": [
                  "string"
            ],
            "store": {
                  "origin": "DS, AP, AC, OV",
                  "location": "FR",
                  "channel": "WEB",
                  "audience": "B2C",
                  "culture": "fr-FR"
            },
            "vin": "string"
            }
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/630PRP4/connected-services/xf'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 400

Scenario: Retrieve TC document

      * def RequestBody = 
      """
            {
            "fileName" : "AT_DE_AR_CASH_Core_ONL_20230705.pdf"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/TC-document'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Retrieve vehicle information for provided VIN

      * def RequestBody = 
      """
            {
            "orderId": "",
            "country": "fr",
            "language": "fr_FR",
            "marketCode": "1000",
            "brand": "AP",
            "vin": "W0L0SDL6884282423 ",
            "fcoOrder": "25331182 "
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/retailer-sc/vehicle-info'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Create Quotation of Retailer Service Contract  

      * def RequestBody = 
      """
            {
            "brand": "string",
            "car": "string",
            "country": "string",
            "culture": "string",
            "customerType": "B2B or B2C",
            "dealer": {
            "Attributes": {
                  "USERNAME": "string",
                  "MARKETCODE": "string",
                  "FIRSTNAME": "string",
                  "LASTNAME": "string",
                  "STATUS": "string",
                  "LANGUAGE": "string",
                  "EMAIL": "string",
                  "TELEPHONE": "string",
                  "FAX": "string",
                  "COMPANY": "string",
                  "USERTYPE": "string",
                  "MAINSINCOM": "string",
                  "NATION": "string"
            },
            "application": "string",
            "jwtToken": "string",
            "market": "string",
            "profile": "string",
            "location": {
                  "MARKET": "3104",
                  "CODE": "00000118",
                  "STATE": "ACTIVE",
                  "DESCRIPTION": "AUTO.IT SPRL",
                  "CITY": "CUESMES",
                  "ADDRESS": "RUE DE LA POIRE D'OR 22",
                  "ZIPCODE": "7033",
                  "apdvDealerData": {
                  "57": {
                  "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                  },
                  "countryId": "BE",
                  "culture": "fr",
                  "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                  },
                  "name": "string",
                  "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                  },
                  "siteGeo": "0000097292",
                  "intracommunityTVA": "0889541369",
                  "brand": "AR",
                  "parentSiteGeo": "BE00001297",
                  "raisonSocial": "AUTO.IT SPRL",
                  "isSuccursale": true,
                  "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                  },
                  "RRDI": "BE000ZA01X\"",
                  "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                  },
                  "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                  ],
                  "legalStatus": "string",
                  "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                  ],
                  "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                  ],
                  "rcsNumber": "string",
                  "numSiret": "string",
                  "webSites": {
                        "private": "string",
                        "public": "string"
                  }
                  },
                  "66": {
                  "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                  },
                  "countryId": "BE",
                  "culture": "fr",
                  "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                  },
                  "name": "string",
                  "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                  },
                  "siteGeo": "0000097292",
                  "intracommunityTVA": "0889541369",
                  "brand": "AR",
                  "parentSiteGeo": "BE00001297",
                  "raisonSocial": "AUTO.IT SPRL",
                  "isSuccursale": true,
                  "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                  },
                  "RRDI": "BE000ZA01X\"",
                  "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                  },
                  "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                  ],
                  "legalStatus": "string",
                  "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                  ],
                  "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                  ],
                  "rcsNumber": "string",
                  "numSiret": "string",
                  "webSites": {
                        "private": "string",
                        "public": "string"
                  }
                  },
                  "77": {
                  "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                  },
                  "countryId": "BE",
                  "culture": "fr",
                  "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                  },
                  "name": "string",
                  "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                  },
                  "siteGeo": "0000097292",
                  "intracommunityTVA": "0889541369",
                  "brand": "AR",
                  "parentSiteGeo": "BE00001297",
                  "raisonSocial": "AUTO.IT SPRL",
                  "isSuccursale": true,
                  "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                  },
                  "RRDI": "BE000ZA01X\"",
                  "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                  },
                  "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                  ],
                  "legalStatus": "string",
                  "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                  ],
                  "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                  ],
                  "rcsNumber": "string",
                  "numSiret": "string",
                  "webSites": {
                        "private": "string",
                        "public": "string"
                  }
                  },
                  "83": {
                  "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                  },
                  "countryId": "BE",
                  "culture": "fr",
                  "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                  },
                  "name": "string",
                  "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                  },
                  "siteGeo": "0000097292",
                  "intracommunityTVA": "0889541369",
                  "brand": "AR",
                  "parentSiteGeo": "BE00001297",
                  "raisonSocial": "AUTO.IT SPRL",
                  "isSuccursale": true,
                  "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                  },
                  "RRDI": "BE000ZA01X\"",
                  "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                  },
                  "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                  ],
                  "legalStatus": "string",
                  "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                  ],
                  "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                  ],
                  "rcsNumber": "string",
                  "numSiret": "string",
                  "webSites": {
                        "private": "string",
                        "public": "string"
                  }
                  },
                  "00": {
                  "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                  },
                  "countryId": "BE",
                  "culture": "fr",
                  "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                  },
                  "name": "string",
                  "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                  },
                  "siteGeo": "0000097292",
                  "intracommunityTVA": "0889541369",
                  "brand": "AR",
                  "parentSiteGeo": "BE00001297",
                  "raisonSocial": "AUTO.IT SPRL",
                  "isSuccursale": true,
                  "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                  },
                  "RRDI": "BE000ZA01X\"",
                  "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                  },
                  "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                  ],
                  "legalStatus": "string",
                  "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                  ],
                  "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                  ],
                  "rcsNumber": "string",
                  "numSiret": "string",
                  "webSites": {
                        "private": "string",
                        "public": "string"
                  }
                  },
                  "CC": {
                  "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                  },
                  "countryId": "BE",
                  "culture": "fr",
                  "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                  },
                  "name": "string",
                  "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                  },
                  "siteGeo": "0000097292",
                  "intracommunityTVA": "0889541369",
                  "brand": "AR",
                  "parentSiteGeo": "BE00001297",
                  "raisonSocial": "AUTO.IT SPRL",
                  "isSuccursale": true,
                  "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                  },
                  "RRDI": "BE000ZA01X\"",
                  "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                  },
                  "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                  ],
                  "legalStatus": "string",
                  "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                  ],
                  "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                  ],
                  "rcsNumber": "string",
                  "numSiret": "string",
                  "webSites": {
                        "private": "string",
                        "public": "string"
                  }
                  },
                  "GG": {
                  "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                  },
                  "countryId": "BE",
                  "culture": "fr",
                  "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                  },
                  "name": "string",
                  "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                  },
                  "siteGeo": "0000097292",
                  "intracommunityTVA": "0889541369",
                  "brand": "AR",
                  "parentSiteGeo": "BE00001297",
                  "raisonSocial": "AUTO.IT SPRL",
                  "isSuccursale": true,
                  "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                  },
                  "RRDI": "BE000ZA01X\"",
                  "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                  },
                  "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                  ],
                  "legalStatus": "string",
                  "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                  ],
                  "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                  ],
                  "rcsNumber": "string",
                  "numSiret": "string",
                  "webSites": {
                        "private": "string",
                        "public": "string"
                  }
                  },
                  "PP": {
                  "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                  },
                  "countryId": "BE",
                  "culture": "fr",
                  "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                  },
                  "name": "string",
                  "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                  },
                  "siteGeo": "0000097292",
                  "intracommunityTVA": "0889541369",
                  "brand": "AR",
                  "parentSiteGeo": "BE00001297",
                  "raisonSocial": "AUTO.IT SPRL",
                  "isSuccursale": true,
                  "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                  },
                  "RRDI": "BE000ZA01X\"",
                  "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                  },
                  "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                  ],
                  "legalStatus": "string",
                  "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                  ],
                  "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                  ],
                  "rcsNumber": "string",
                  "numSiret": "string",
                  "webSites": {
                        "private": "string",
                        "public": "string"
                  }
                  },
                  "SS": {
                  "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                  },
                  "countryId": "BE",
                  "culture": "fr",
                  "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                  },
                  "name": "string",
                  "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                  },
                  "siteGeo": "0000097292",
                  "intracommunityTVA": "0889541369",
                  "brand": "AR",
                  "parentSiteGeo": "BE00001297",
                  "raisonSocial": "AUTO.IT SPRL",
                  "isSuccursale": true,
                  "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                  },
                  "RRDI": "BE000ZA01X\"",
                  "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                  },
                  "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                  ],
                  "legalStatus": "string",
                  "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                  ],
                  "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                  ],
                  "rcsNumber": "string",
                  "numSiret": "string",
                  "webSites": {
                        "private": "string",
                        "public": "string"
                  }
                  }
                  },
                  "details": {
                  "LDAPID": "M0017801",
                  "RRDI": "BE000ZA",
                  "BRAND": "AR",
                  "ALTBRAND": "83",
                  "SINCOM": "0002549",
                  "SITE": "000",
                  "GEOSITE": "0000097292",
                  "OUTLET": "BE00001297"
                  }
            }
            },
            "parentMopId": "string",
            "serviceContract": {
            "currency": "string",
            "selectedFamilyCode": "string",
            "selectedServiceContractPlan": [
                  {
                  "planCode": "string"
                  }
            ],
            "selectedServiceContracts": [
                  {
                  "id": "string",
                  "familyCode": "string",
                  "familyDesc": "string",
                  "shortDesc": "string",
                  "longDesc": "string",
                  "planCode": "string",
                  "planDuration": 0,
                  "planMileage": 0,
                  "price": 0,
                  "priceWithoutTaxes": 0,
                  "quantity": 0,
                  "optionalCode": "string",
                  "title": "string",
                  "titleUk": "string",
                  "customerCategory": "string",
                  "rateCategory": "string"
                  }
            ],
            "selectedServiceContractsOptional": [
                  {
                  "id": "string",
                  "familyCode": "string",
                  "familyDesc": "string",
                  "shortDesc": "string",
                  "longDesc": "string",
                  "planCode": "string",
                  "planDuration": 0,
                  "planMileage": 0,
                  "price": 0,
                  "priceWithoutTaxes": 0,
                  "quantity": 0,
                  "optionalCode": "string",
                  "title": "string",
                  "titleUk": "string",
                  "customerCategory": "string",
                  "rateCategory": "string"
                  }
            ],
            "totalAmount": 0,
            "totalAmountWithoutTax": 0
            },
            "userProfile": {
            "profession": "string",
            "provinceOfBirth": "string",
            "salutation": "string",
            "title": "string",
            "userType": "string",
            "vatNumber": "string",
            "phone": "string",
            "nationalIdNumber": "string",
            "nationalIdType": "string",
            "mobile": "string",
            "email": "string",
            "customerId": "string",
            "firstName": "string",
            "fiscalID": "string",
            "gigyaId": "string",
            "hasCustomerConfirmed": true,
            "language": "string",
            "lastName": "string",
            "magentoUserId": "string",
            "commercialName": "string",
            "dateOfCompanyCreation": "string",
            "industry": "string",
            "citizenship": "string",
            "cityOfBirth": "string",
            "customerFirstId": "string",
            "dateOfBirth": "string",
            "companyEmail": "string",
            "companyNumber": "string",
            "role": "string",
            "secondPhoneNumber": "string",
            "titleCode": "string",
            "titleLabel": "string",
            "billingData": {
                  "city": "string",
                  "country": "string",
                  "street": "string",
                  "province": "string",
                  "zipCode": "string"
            },
            "postalData": {
                  "city": "string",
                  "country": "string",
                  "street": "string",
                  "province": "string",
                  "zipCode": "string"
            },
            "b2bContactData": {
                  "companyEmail": "string",
                  "companyNumber": "string",
                  "role": "string",
                  "secondPhoneNumber": "string",
                  "titleCode": "string",
                  "titleLabel": "string"
            }
            },
            "vehicleDetails": {
            "customerType": "string",
            "ccfNum": "string",
            "vin": "string",
            "marketLabel": "string",
            "marketCode": "string",
            "licensePlate": "string",
            "lcdv16": "string",
            "model": "string",
            "modelYear": "string",
            "mvsModelCode": "string",
            "version": "string",
            "fuelTypeCode": "string",
            "fuelTypeDesc": "string",
            "engineCode": "string",
            "engineType": "string",
            "engineCodes": "string",
            "car": "string",
            "parentMopId": "string",
            "userProfile": {
                  "email": "string"
            },
            "warrantyStartDate": "string"
            }
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/retailer-sc/journey/create/quote'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 500


Scenario: Update Quotation of Retailer Service Contract

      * def RequestBody = 
      """
            {
            "mopId": "string",
            "parentMopId": "string",
            "quoteId": "string",
            "orderId": "string",
            "quote": {
            "brand": "string",
            "checkout": {
                  "offPayChecked": true,
                  "confirmClientPay": true
            },
            "country": "string",
            "consents": [
                  {
                  "language": "string",
                  "country": "string",
                  "brand": "string",
                  "documentType": "string",
                  "documentRelease": "string",
                  "mainLegalText": "string",
                  "entity": "string",
                  "disclaimerId": "string",
                  "purpose": "string",
                  "checkboxMeaning": "string",
                  "isErro": true,
                  "stChecked": true,
                  "rtChecked": true
                  }
            ],
            "document": [
                  {
                  "id": "string",
                  "externalReference": "string"
                  }
            ],
            "contractSubscription": {
                  "termsConditionsChecked": true,
                  "signatureInPersonChecked": true,
                  "customerSignatureAndPaymentChecked": true
            },
            "culture": "string",
            "personalData": true,
            "customerType": "B2B or B2C",
            "dealer": {
                  "Attributes": {
                  "USERNAME": "string",
                  "MARKETCODE": "string",
                  "FIRSTNAME": "string",
                  "LASTNAME": "string",
                  "STATUS": "string",
                  "LANGUAGE": "string",
                  "EMAIL": "string",
                  "TELEPHONE": "string",
                  "FAX": "string",
                  "COMPANY": "string",
                  "USERTYPE": "string",
                  "MAINSINCOM": "string",
                  "NATION": "string"
                  },
                  "application": "string",
                  "jwtToken": "string",
                  "market": "string",
                  "profile": "string",
                  "location": {
                  "MARKET": "3104",
                  "CODE": "00000118",
                  "STATE": "ACTIVE",
                  "DESCRIPTION": "AUTO.IT SPRL",
                  "CITY": "CUESMES",
                  "ADDRESS": "RUE DE LA POIRE D'OR 22",
                  "ZIPCODE": "7033",
                  "apdvDealerData": {
                  "57": {
                        "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                        },
                        "countryId": "BE",
                        "culture": "fr",
                        "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                        },
                        "name": "string",
                        "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                        },
                        "siteGeo": "0000097292",
                        "intracommunityTVA": "0889541369",
                        "brand": "AR",
                        "parentSiteGeo": "BE00001297",
                        "raisonSocial": "AUTO.IT SPRL",
                        "isSuccursale": true,
                        "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                        },
                        "RRDI": "BE000ZA01X\"",
                        "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                        },
                        "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                        ],
                        "legalStatus": "string",
                        "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                        ],
                        "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                        ],
                        "rcsNumber": "string",
                        "numSiret": "string",
                        "webSites": {
                        "private": "string",
                        "public": "string"
                        }
                  },
                  "66": {
                        "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                        },
                        "countryId": "BE",
                        "culture": "fr",
                        "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                        },
                        "name": "string",
                        "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                        },
                        "siteGeo": "0000097292",
                        "intracommunityTVA": "0889541369",
                        "brand": "AR",
                        "parentSiteGeo": "BE00001297",
                        "raisonSocial": "AUTO.IT SPRL",
                        "isSuccursale": true,
                        "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                        },
                        "RRDI": "BE000ZA01X\"",
                        "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                        },
                        "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                        ],
                        "legalStatus": "string",
                        "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                        ],
                        "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                        ],
                        "rcsNumber": "string",
                        "numSiret": "string",
                        "webSites": {
                        "private": "string",
                        "public": "string"
                        }
                  },
                  "77": {
                        "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                        },
                        "countryId": "BE",
                        "culture": "fr",
                        "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                        },
                        "name": "string",
                        "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                        },
                        "siteGeo": "0000097292",
                        "intracommunityTVA": "0889541369",
                        "brand": "AR",
                        "parentSiteGeo": "BE00001297",
                        "raisonSocial": "AUTO.IT SPRL",
                        "isSuccursale": true,
                        "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                        },
                        "RRDI": "BE000ZA01X\"",
                        "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                        },
                        "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                        ],
                        "legalStatus": "string",
                        "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                        ],
                        "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                        ],
                        "rcsNumber": "string",
                        "numSiret": "string",
                        "webSites": {
                        "private": "string",
                        "public": "string"
                        }
                  },
                  "83": {
                        "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                        },
                        "countryId": "BE",
                        "culture": "fr",
                        "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                        },
                        "name": "string",
                        "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                        },
                        "siteGeo": "0000097292",
                        "intracommunityTVA": "0889541369",
                        "brand": "AR",
                        "parentSiteGeo": "BE00001297",
                        "raisonSocial": "AUTO.IT SPRL",
                        "isSuccursale": true,
                        "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                        },
                        "RRDI": "BE000ZA01X\"",
                        "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                        },
                        "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                        ],
                        "legalStatus": "string",
                        "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                        ],
                        "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                        ],
                        "rcsNumber": "string",
                        "numSiret": "string",
                        "webSites": {
                        "private": "string",
                        "public": "string"
                        }
                  },
                  "00": {
                        "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                        },
                        "countryId": "BE",
                        "culture": "fr",
                        "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                        },
                        "name": "string",
                        "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                        },
                        "siteGeo": "0000097292",
                        "intracommunityTVA": "0889541369",
                        "brand": "AR",
                        "parentSiteGeo": "BE00001297",
                        "raisonSocial": "AUTO.IT SPRL",
                        "isSuccursale": true,
                        "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                        },
                        "RRDI": "BE000ZA01X\"",
                        "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                        },
                        "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                        ],
                        "legalStatus": "string",
                        "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                        ],
                        "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                        ],
                        "rcsNumber": "string",
                        "numSiret": "string",
                        "webSites": {
                        "private": "string",
                        "public": "string"
                        }
                  },
                  "CC": {
                        "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                        },
                        "countryId": "BE",
                        "culture": "fr",
                        "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                        },
                        "name": "string",
                        "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                        },
                        "siteGeo": "0000097292",
                        "intracommunityTVA": "0889541369",
                        "brand": "AR",
                        "parentSiteGeo": "BE00001297",
                        "raisonSocial": "AUTO.IT SPRL",
                        "isSuccursale": true,
                        "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                        },
                        "RRDI": "BE000ZA01X\"",
                        "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                        },
                        "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                        ],
                        "legalStatus": "string",
                        "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                        ],
                        "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                        ],
                        "rcsNumber": "string",
                        "numSiret": "string",
                        "webSites": {
                        "private": "string",
                        "public": "string"
                        }
                  },
                  "GG": {
                        "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                        },
                        "countryId": "BE",
                        "culture": "fr",
                        "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                        },
                        "name": "string",
                        "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                        },
                        "siteGeo": "0000097292",
                        "intracommunityTVA": "0889541369",
                        "brand": "AR",
                        "parentSiteGeo": "BE00001297",
                        "raisonSocial": "AUTO.IT SPRL",
                        "isSuccursale": true,
                        "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                        },
                        "RRDI": "BE000ZA01X\"",
                        "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                        },
                        "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                        ],
                        "legalStatus": "string",
                        "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                        ],
                        "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                        ],
                        "rcsNumber": "string",
                        "numSiret": "string",
                        "webSites": {
                        "private": "string",
                        "public": "string"
                        }
                  },
                  "PP": {
                        "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                        },
                        "countryId": "BE",
                        "culture": "fr",
                        "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                        },
                        "name": "string",
                        "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                        },
                        "siteGeo": "0000097292",
                        "intracommunityTVA": "0889541369",
                        "brand": "AR",
                        "parentSiteGeo": "BE00001297",
                        "raisonSocial": "AUTO.IT SPRL",
                        "isSuccursale": true,
                        "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                        },
                        "RRDI": "BE000ZA01X\"",
                        "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                        },
                        "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                        ],
                        "legalStatus": "string",
                        "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                        ],
                        "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                        ],
                        "rcsNumber": "string",
                        "numSiret": "string",
                        "webSites": {
                        "private": "string",
                        "public": "string"
                        }
                  },
                  "SS": {
                        "address": {
                        "city": "CUESMES",
                        "country": "",
                        "department": "",
                        "line1": "RUE DE LA POIRE DOR 22",
                        "line2": "",
                        "line3": "",
                        "region": "",
                        "zipCode": "7033",
                        "villeProxmimite": ""
                        },
                        "countryId": "BE",
                        "culture": "fr",
                        "emails": {
                        "email": "info@autopuntoit.be",
                        "emailAPV": "",
                        "emailAgent": "",
                        "emailGER": "",
                        "emailGRC": "",
                        "emailPR": "",
                        "emailSales": "",
                        "emailVO": ""
                        },
                        "name": "string",
                        "phones": {
                        "phoneAPV": "065361415",
                        "phoneNumber": "065361415",
                        "phonePR": "065361415",
                        "phoneVN": "065361415",
                        "phoneVO": "fr"
                        },
                        "siteGeo": "0000097292",
                        "intracommunityTVA": "0889541369",
                        "brand": "AR",
                        "parentSiteGeo": "BE00001297",
                        "raisonSocial": "AUTO.IT SPRL",
                        "isSuccursale": true,
                        "coordinates": {
                        "latitude": 0,
                        "longitude": 0
                        },
                        "RRDI": "BE000ZA01X\"",
                        "codesActors": {
                        "codeActorCCVN": "string",
                        "codeActorCCVL": "string"
                        },
                        "ftcCodeList": [
                        {
                        "codeActeur": "BE000ZA",
                        "codeActeurPrincipal": "BE000XF",
                        "codeNature": "RA",
                        "dealerCode": "0002549",
                        "idSite": "BE00001297",
                        "mainDealerCode": "0001567",
                        "market": "3104",
                        "oic": "00000118",
                        "outlet": "000",
                        "legalEntity": "0001567"
                        }
                        ],
                        "legalStatus": "string",
                        "adrLivList": [
                        {
                        "actorAdrCode": "string",
                        "isDefault": true
                        }
                        ],
                        "openHours": [
                        {
                        "label": "string",
                        "type": "string"
                        }
                        ],
                        "rcsNumber": "string",
                        "numSiret": "string",
                        "webSites": {
                        "private": "string",
                        "public": "string"
                        }
                  }
                  },
                  "details": {
                  "LDAPID": "M0017801",
                  "RRDI": "BE000ZA",
                  "BRAND": "AR",
                  "ALTBRAND": "83",
                  "SINCOM": "0002549",
                  "SITE": "000",
                  "GEOSITE": "0000097292",
                  "OUTLET": "BE00001297"
                  }
                  }
            },
            "lastStepCode": 0,
            "parentMopId": "string",
            "serviceContract": {
                  "currency": "string",
                  "selectedFamilyCode": "string",
                  "selectedServiceContractPlan": [
                  {
                  "planCode": "string"
                  }
                  ],
                  "selectedServiceContracts": [
                  {
                  "id": "string",
                  "familyCode": "string",
                  "familyDesc": "string",
                  "shortDesc": "string",
                  "longDesc": "string",
                  "planCode": "string",
                  "planDuration": 0,
                  "planMileage": 0,
                  "price": 0,
                  "priceWithoutTaxes": 0,
                  "quantity": 0,
                  "optionalCode": "string",
                  "title": "string",
                  "titleUk": "string",
                  "customerCategory": "string",
                  "rateCategory": "string"
                  }
                  ],
                  "selectedServiceContractsOptional": [
                  {
                  "id": "string",
                  "familyCode": "string",
                  "familyDesc": "string",
                  "shortDesc": "string",
                  "longDesc": "string",
                  "planCode": "string",
                  "planDuration": 0,
                  "planMileage": 0,
                  "price": 0,
                  "priceWithoutTaxes": 0,
                  "quantity": 0,
                  "optionalCode": "string",
                  "title": "string",
                  "titleUk": "string",
                  "customerCategory": "string",
                  "rateCategory": "string"
                  }
                  ],
                  "totalAmount": 0,
                  "totalAmountWithoutTax": 0
            },
            "serviceContractOrder": {
                  "statusId": "string",
                  "orderId": "string"
            },
            "userProfile": {
                  "profession": "string",
                  "provinceOfBirth": "string",
                  "salutation": "string",
                  "title": "string",
                  "userType": "string",
                  "vatNumber": "string",
                  "phone": "string",
                  "nationalIdNumber": "string",
                  "nationalIdType": "string",
                  "mobile": "string",
                  "email": "string",
                  "customerId": "string",
                  "firstName": "string",
                  "fiscalID": "string",
                  "gigyaId": "string",
                  "hasCustomerConfirmed": true,
                  "language": "string",
                  "lastName": "string",
                  "magentoUserId": "string",
                  "commercialName": "string",
                  "dateOfCompanyCreation": "string",
                  "industry": "string",
                  "citizenship": "string",
                  "cityOfBirth": "string",
                  "customerFirstId": "string",
                  "dateOfBirth": "string",
                  "companyEmail": "string",
                  "companyNumber": "string",
                  "role": "string",
                  "secondPhoneNumber": "string",
                  "titleCode": "string",
                  "titleLabel": "string",
                  "billingData": {
                  "city": "string",
                  "country": "string",
                  "street": "string",
                  "province": "string",
                  "zipCode": "string"
                  },
                  "postalData": {
                  "city": "string",
                  "country": "string",
                  "street": "string",
                  "province": "string",
                  "zipCode": "string"
                  },
                  "b2bContactData": {
                  "companyEmail": "string",
                  "companyNumber": "string",
                  "role": "string",
                  "secondPhoneNumber": "string",
                  "titleCode": "string",
                  "titleLabel": "string"
                  }
            },
            "vehicleDetails": {
                  "customerType": "string",
                  "ccfNum": "string",
                  "vin": "string",
                  "marketLabel": "string",
                  "marketCode": "string",
                  "licensePlate": "string",
                  "lcdv16": "string",
                  "model": "string",
                  "modelYear": "string",
                  "mvsModelCode": "string",
                  "version": "string",
                  "fuelTypeCode": "string",
                  "fuelTypeDesc": "string",
                  "engineCode": "string",
                  "engineType": "string",
                  "engineCodes": "string",
                  "car": "string",
                  "parentMopId": "string",
                  "userProfile": {
                  "email": "string"
                  },
                  "warrantyStartDate": "string"
            },
            "car": "string"
            }
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/retailer-sc/journey/update/quote'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 500

Scenario: Get Quotation of Retailer Service Contract

      * def RequestBody = 
      """
            {
            "brand": "string",
            "country": "string",
            "quoteId": "string",
            "culture": "string",    
            "dealerToken": "string"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/retailer-sc/journey/get/quote'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Get Terms and Conditions of retailer Service Contract 

      * def RequestBody = 
      """
            {
            "brand": "83",
            "country": "AT",
            "culture": "",
            "dealerToken": "string",
            "entityId": "string",
            "isQuote": true,
            "template": "string"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/retailer-sc/terms-conditions'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Get Service Contract Optional business of Retailer Service Contract  

      * def RequestBody = 
      """
        {
            "market": "3103",
            "planSaleDate": "2026-04-09",
            "dealerCode": "0103250",
            "garageDealerCode": "0170250",
            "language": "de",
            "country": "AT",
            "sourceSale": "FGA",
            "userJourney": "online",
            "journey": "online",
            "fuelType": "03",
            "modelYear": "2023",
            "vehicleCode": "630PRP4",
            "brand": "83",
            "optionals": "",
            "customerType": "B2C",
            "saleType": "DLR",
            "familyCode": "3R1",
            "defaultPlanCode": "345",
            "planCategory": "",
            "planDurey": 0,
            "planMileage": 0
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/retailer-sc/optionals'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 500

Scenario: Retrieve Service Contract Search Order 

      * def RequestBody = 
      """
            {
            "brand": "string",
            "country": "string",
            "culture": "string",
            "dealerToken": "string",
            "orderId": "string"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/retailer-sc/journey/search/order'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Get Retailer Family Service

      * def RequestBody = 
      """
                  {
                  "brand": "83",
                  "country": "AT",
                  "customerType": "B2C",
                  "dealerCode": "0103250",
                  "fuelType": "03",
                  "garageDealerCode": "0170250",
                  "journey": "online",
                  "language": "de",
                  "market": "3103",
                  "modelYear": "2023",
                  "optionals": "",
                  "planSaleDate": "2023-07-31",
                  "saleType": "DLR",
                  "sourceSale": "FGA",
                  "userJourney": "online",
                  "vehicleCode": "630PRP4"
                  }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/retailer-sc/family'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 500

Scenario: Get Retailer Plans Service

      * def RequestBody = 
      """
        {
            "market": "3103",
            "planSaleDate": "2026-04-09",
            "dealerCode": "0103250",
            "garageDealerCode": "0170250",
            "language": "de",
            "country": "AT",
            "sourceSale": "FGA",
            "userJourney": "online",
            "journey": "online",
            "fuelType": "03",
            "modelYear": "2023",
            "vehicleCode": "630PRP4",
            "brand": "83",
            "optionals": "",
            "customerType": "B2C",
            "saleType": "DLR",
            "familyCode": "3R1",
            "defaultPlanCode": "345",
            "planCategory": "",
            "planDurey": 0,
            "planMileage": 0
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/retailer-sc/plans'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Get Vehicule with Filter

      * def RequestBody = 
      """
       {
            "brand": "00",
            "customerType": "B2C",
            "language": "it",
            "filters": {
            "fuelTypes": [
                  "E"
            ],
            "gears": [
                  ""
            ],
            "tractions": [
                  ""
            ]
            },
            "market": "1000",
            "sccfEnv": ""
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/ncs/retrieve'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header brandCode = 3
      And header marketCode = 4     
      And header languageCode = 5   
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Retrieve filters for LVC

   * def RequestBody = 
      """
       {     
            "bodyStyle": "",
            "brand": "00",
            "customerType": "B2C",
            "language": "it",
             "filter": {
                  "filterId": 0,
                  "length": [
                        "string"
                  ],
                  "height": [
                        "string"
                  ],
                  "weight": [
                        "string"
                  ],
                  "numberOfSeats": [
                        "string"
                  ]
                  },
            "market": "1000",
            "sccfEnv": ""
      }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/ncs/lcv-filters'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header brandCode = 3
      And header marketCode = 4     
      And header languageCode = 5   
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Retrieve service and maintenance plans

      * def RequestBody = 
      """
        {
            "market": "3103",
            "planSaleDate": "2026-04-09",
            "dealerCode": "0103250",
            "garageDealerCode": "0170250",
            "language": "de",
            "country": "AT",
            "sourceSale": "FGA",
            "userJourney": "online",
            "journey": "online",
            "fuelType": "03",
            "modelYear": "2023",
            "vehicleCode": "630PRP4",
            "brand": "83",
            "optionals": "",
            "customerType": "B2C",
            "saleType": "DLR",
            "familyCode": "3R1",
            "defaultPlanCode": "345",
            "planCategory": "",
            "planDurey": 0,
            "planMileage": 0
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/ncs/plans'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200