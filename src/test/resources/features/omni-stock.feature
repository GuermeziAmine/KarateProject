Feature: OMNI Stock Logic 

 Background:

    * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net' + '/dev'
    * def authResult = call read('auth.feature')
    * def token = authResult.authToken



Scenario: Retrieve a list of available dealers 

    * def RequestBody = 
    """
            {
            "context": "AR",
            "definitionType": "VP",
            "customerType": "B2B ",
            "derivedModels": "040",
            "partialMatching": true,
            "perfectMatching": "string",
            "models": "620",
            "bodyStyles": "RB54",
            "priceType": "cash",
            "minPrice": 1200,
            "maxPrice": 45000,
            "minPriceWithoutTaxes": 0,
            "maxPriceWithoutTaxes": 0,
            "minB2BPrice": 0,
            "maxB2BPrice": 0,
            "minMonthlyPaymentWithTax": 150,
            "maxMonthlyPaymentWithTax": 170,
            "minMonthlyPaymentWithoutTax": 150,
            "maxMonthlyPaymentWithoutTax": 170,
            "transmissionTypes": "BV000008",
            "sort": "price:asc",
            "energies": "string",
            "colorGroups": "RED",
            "gearboxTypes": "T0000001",
            "grades": "00000244",
            "engines": "M0000233",
            "dealerId": "T0000001",
            "equipments": "AL12",
            "color": "0MP00NY2,0MP00NWP",
            "trim": "0POY0RFC,0PD30RFX",
            "culture": "be-FR",
            "location": "Canary",
            "situation": "Full online",
            "saleType": "B2C",
            "minMatching": "100%",
            "resultsPerPage": 24,
            "page": 1,
            "flowType": "XF or XP",
            "brand": "83",
            "marketCode": "3103",
            "brandName": "alfaromeo",
            "definitionId": "string",
            "minPriceFinanced": 1200,
            "maxPriceFinanced": 45000,
            "longitude": 0,
            "latitude": 0,
            "radius": 0,
            "unit": "string",
            "minVolume": 0,
            "maxVolume": 0,
            "maxLength": 0,
            "minLength": 0,
            "minPayload": 0,
            "maxPayload": 0,
            "maxPower": "string",
            "typeStockFiltered": "string",
            "loadAllCTA": false,
            "vins": "string"
            }
    
    """

    Given url 'http://localhost:3012/checksum'
    And header Content-Type = 'application/json'
    And request RequestBody
    When method post
    Then status 200

    * def generatedChecksum = response.toString().replace(/"/g, '')
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum



    Given url omniUrl 
        And  path '/stock/v1/get-dealer-list'

    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'

    And header x-trace-id = 'karate-test-12345'
    And header x-country-id = generatedChecksum

   
    And request RequestBody
    When method post
    Then status 400 

Scenario: Retrieve configuration definitions for a list of stock 

    * def RequestBody = 
    """
            {
            "context": "AR",
            "definitionType": "VP",
            "customerType": "B2B",
            "derivedModels": "040",
            "partialMatching": true,
            "perfectMatching": "string",
            "models": "620",
            "bodyStyles": "RB54",
            "priceType": "cash",
            "minPrice": 1200,
            "maxPrice": 45000,
            "minPriceWithoutTaxes": 0,
            "maxPriceWithoutTaxes": 0,
            "minB2BPrice": 0,
            "maxB2BPrice": 0,
            "minMonthlyPaymentWithTax": 150,
            "maxMonthlyPaymentWithTax": 170,
            "minMonthlyPaymentWithoutTax": 150,
            "maxMonthlyPaymentWithoutTax": 170,
            "transmissionTypes": "BV000008",
            "sort": "price:asc",
            "energies": "string",
            "colorGroups": "RED",
            "gearboxTypes": "T0000001",
            "grades": "00000244",
            "engines": "M0000233",
            "dealerId": "T0000001",
            "equipments": "AL12",
            "color": "0MP00NY2,0MP00NWP",
            "trim": "0POY0RFC,0PD30RFX",
            "culture": "be-FR",
            "location": "Canary",
            "situation": "Full online",
            "saleType": "B2C",
            "minMatching": "100%",
            "resultsPerPage": 24,
            "page": 1,
            "flowType": "XF or XP",
            "brand": "83",
            "marketCode": "3103",
            "brandName": "alfaromeo",
            "definitionId": "string",
            "minPriceFinanced": 1200,
            "maxPriceFinanced": 45000,
            "longitude": 0,
            "latitude": 0,
            "radius": 0,
            "unit": "string",
            "minVolume": 0,
            "maxVolume": 0,
            "maxLength": 0,
            "minLength": 0,
            "minPayload": 0,
            "maxPayload": 0,
            "maxPower": "string",
            "typeStockFiltered": "string",
            "loadAllCTA": false,
            "vins": "string"
            }
    """

    Given url 'http://localhost:3012/checksum'
    And header Content-Type = 'application/json'
    And request RequestBody
    When method post
    Then status 200

    * def generatedChecksum = response.toString().replace(/"/g, '')
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum



    Given url omniUrl 
        And  path '/stock/v1/get-list-definitions'

    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'

    And header x-trace-id = 'karate-test-12345'
    And header x-country-id = generatedChecksum

   
    And request RequestBody
    When method post
    Then status 400 

Scenario: Retrieve detailed definition for a specific vehicle code 

    * def RequestBody = 
    """
            {
            "context": "string",
            "culture": "string",
            "customerType": "string",
            "flowType": "XF or XP",
            "brandCode": "83",
            "marketCode": "3103",
            "brandName": "alfaromeo"
            }
    
    """

    Given url 'http://localhost:3012/checksum'
    And header Content-Type = 'application/json'
    And request RequestBody
    When method post
    Then status 200

    * def generatedChecksum = response.toString().replace(/"/g, '')
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum

    Given url omniUrl 
        And  path '/stock/v1/7d15f66a9554c7e55cb559378b9b3c4179f52935/details-definition'

    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'

    And header x-trace-id = 'karate-test-12345'
    And header x-country-id = generatedChecksum

   
    And request RequestBody
    When method post
    Then status 404

Scenario: Find similar stock vehicle definitions 

    * def RequestBody = 
    """
            {
            "context": [
                "(AP;PT;contextVPAP)",
                "(AC;FR;contextVPAC)"
            ],
            "partialMatching": true,
            "definitionType": "string",
            "definitionId": "string",
            "bodyStyles": "string",
            "derivedModels": "string",
            "perfectMatching": true,
            "models": {
                "Single value": {
                "summary": "Single value",
                "value": "VP1PP700"
                },
                "Multiple values": {
                "summary": "Multiple values",
                "value": "VP1PP700;VP1PP800"
                }
            },
            "priceType": {
                "both": {
                "summary": "both",
                "value": null
                },
                "financed": {
                "summary": "financed",
                "value": "financed"
                },
                "cash": {
                "summary": "cash",
                "value": "cash"
                }
            },
            "transmissionTypes": {
                "Single value": {
                "summary": "Single value",
                "value": "BV000008"
                },
                "Multiple values": {
                "summary": "Multiple values",
                "value": "BV000008,BV000004"
                }
            },
            "energies": {
                "Single value": {
                "summary": "Single value",
                "value": "04"
                },
                "Multiple values": {
                "summary": "Multiple values",
                "value": "04;02"
                }
            },
            "colorGroups": {
                "Single value": {
                "summary": "Single value",
                "value": "OTHER_COLORS"
                },
                "Multiple values": {
                "summary": "Multiple values",
                "value": "OTHER_COLORS;RED"
                }
            },
            "gearboxTypes": {
                "Single value": {
                "summary": "Single value",
                "value": "TV000001"
                },
                "Multiple values": {
                "summary": "Multiple values",
                "value": "T0000001,T0000002"
                }
            },
            "grades": {
                "Single value": {
                "summary": "Single value",
                "value": "00000244"
                },
                "Multiple values": {
                "summary": "Multiple values",
                "value": "00000244,00000227"
                }
            },
            "engines": {
                "Single value": {
                "summary": "Single value",
                "value": "M0000233"
                },
                "Multiple values": {
                "summary": "Multiple values",
                "value": "M0000233,M0000254"
                }
            },
            "dealerId": {
                "Single value": {
                "summary": "Single value",
                "value": "TV000001"
                },
                "Multiple values": {
                "summary": "Multiple values",
                "value": "T0000001,T0000002"
                }
            },
            "equipments": {
                "Single value": {
                "summary": "Single value",
                "value": "AL12"
                },
                "Multiple values": {
                "summary": "Multiple values",
                "value": "AL12,DD02"
                }
            },
            "color": {
                "Single value": {
                "summary": "Single value",
                "value": "0MP00NY2"
                },
                "Multiple values": {
                "summary": "Multiple values",
                "value": "0MP00NY2,0MP00NWP"
                }
            },
            "trim": {
                "Single value": {
                "summary": "Single value",
                "value": "0POY0RFC"
                },
                "Multiple values": {
                "summary": "Multiple values",
                "value": "0POY0RFC,0PD30RFX"
                }
            },
            "minBudget": 1200,
            "maxBudget": 45000,
            "minPriceWithoutTaxes": 0,
            "maxPriceWithoutTaxes": 0,
            "minB2BPrice": 0,
            "maxB2BPrice": 0,
            "minMonthlyPaymentWithTax": 150,
            "maxMonthlyPaymentWithTax": 170,
            "minMonthlyPaymentWithoutTax": 150,
            "maxMonthlyPaymentWithoutTax": 170,
            "culture": "string",
            "location": "string",
            "situation": "string",
            "saleType": "string",
            "minMatching": "100%",
            "flowType": "string",
            "brand": "string",
            "brandName": "string",
            "marketCode": "string",
            "minScore": "string",
            "resultsPerPage": 0,
            "page": 0,
            "sort": "string",
            "minVolume": 0,
            "maxVolume": 0,
            "maxLength": 0,
            "minLength": 0,
            "minPayload": 0,
            "maxPayload": 0
            }
    
    """

    Given url 'http://localhost:3012/checksum'
    And header Content-Type = 'application/json'
    And request RequestBody
    When method post
    Then status 200

    * def generatedChecksum = response.toString().replace(/"/g, '')
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum

    Given url omniUrl 
        And  path '/stock/v1/similar-definition'

    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'

    And header x-trace-id = 'karate-test-12345'
    And header x-country-id = generatedChecksum

   
    And request RequestBody
    When method post
    Then status 404
    
Scenario: Retrieve models List 

    * def RequestBody = 
    """
    {
        "context": "B2C",
        "definitionType": "string",
        "priceType": "string",
        "minBudget": 0,
        "maxBudget": 0,
        "minBudgetFinanced": 0,
        "maxBudgetFinanced": 0,
        "sort": "string",
        "transmissionTypes": "string",
        "energies": "string",
        "colorGroups": "string",
        "gearboxTypes": "string",
        "grades": "string",
        "engines": "string",
        "keepNonMatching": false,
        "culture": "string",
        "dealerId": "string",
        "situation": "01",
        "salesType": "string"
    }
    
    """

    Given url 'http://localhost:3012/checksum'
    And header Content-Type = 'application/json'
    And request RequestBody
    When method post
    Then status 200

    * def generatedChecksum = response.toString().replace(/"/g, '')
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum

    Given url omniUrl 
        And  path '/stock/v1/get-list-models'

    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'

    And header x-trace-id = 'karate-test-12345'
    And header x-country-id = generatedChecksum

   
    And request RequestBody
    When method post
    Then status 404

Scenario: compare the options between mto and similar cars 

    * def RequestBody = 
    """
        {
            "mto": [
                {
                "code": "string",
                "desc": "string",
                "category": "string",
                "categoryName": "string",
                "isStandard": true,
                "isVisible": true,
                "order": 0
                }
            ],
            "similarCar": [
                {
                "code": "string",
                "desc": "string",
                "category": "string",
                "categoryName": "string",
                "isStandard": true,
                "isVisible": true,
                "order": 0
                }
            ]
            }
    
    """

    Given url 'http://localhost:3012/checksum'
    And header Content-Type = 'application/json'
    And request RequestBody
    When method post
    Then status 200

    * def generatedChecksum = response.toString().replace(/"/g, '')
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum

    Given url omniUrl 
        And  path '/stock/v1/compare-optionals'

    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'

    And header x-trace-id = 'karate-test-12345'
    And header x-country-id = generatedChecksum

   
    And request RequestBody
    When method post
    Then status 200

Scenario: Retrieve ongoing New Car Sales stock status 

    * def RequestBody = 
    """
         {
            "market": "string",
            "brand": "string",
            "language": "string",
            "color": "string",
            "engine": "string",
            "fuel": "string",
            "gearbox": "string",
            "interiorColor": "string",
            "model": "string",
            "mvs": "string",
            "superColor": "string",
            "trim": "string",
            "packs": [
                "string"
            ],
            "optionals": {
                "std": [
                "string"
                ],
                "offline": [
                "string"
                ]
            }
            }
                
    """

    Given url 'http://localhost:3012/checksum'
    And header Content-Type = 'application/json'
    And request RequestBody
    When method post
    Then status 200

    * def generatedChecksum = response.toString().replace(/"/g, '')
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum

    Given url omniUrl 
        And  path '/stock/v1/ncs/ongoing'

    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'

    And header x-trace-id = 'karate-test-12345'
    And header x-country-id = generatedChecksum

   
    And request RequestBody
    When method post
    Then status 500