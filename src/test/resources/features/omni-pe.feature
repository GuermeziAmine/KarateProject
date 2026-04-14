Feature: OMNI PE  Service Logic

    Background:
        * print 'Token utilisé pour ce test :', token

Scenario: Retrieve Prices of Vehicule 
  
     * def RequestBody = 
        """
          {
            "accessories": [
                {
                "description": "Accessory description",
                "discount": 150,
                "id": "34126232",
                "labourCost": 1000,
                "labourTime": 1.5,
                "withoutTaxes": 1000
                }
            ],
            "autoComplete": true,
            "conversion": {
                "co2": 198,
                "description": "Conversion description",
                "id": "CONV1",
                "optionals": [
                {
                    "id": "XG82",
                    "withoutTaxes": 13000
                }
                ],
                "withoutTaxes": 13000
            },
            "brand": "AP",
            "codOrder": "023859817",
            "color": "0MP00NWP",
            "connectedServices": [
                {
                "description": "Connected service description",
                "discount": 150,
                "id": "CX5256",
                "withoutTaxes": 250
                }
            ],
            "contracts": [
                {
                "description": "Contract description",
                "discount": 150,
                "id": "24632435",
                "options": [
                    {
                    "id": "125",
                    "quantity": 2,
                    "withoutTaxes": 100
                    }
                ],
                "withoutTaxes": 0
                }
            ],
            "country": "IT",
            "coupon": "24510",
            "cst_discount": [
                {
                "applicability": "all",
                "cst_discount_opt": [
                    {
                    "id": "GB33",
                    "percentage": true,
                    "value": 0.05
                    }
                ],
                "description": "Special customer offer",
                "id": "435672",
                "percentage": true,
                "type": "FLT",
                "value": 0.05
                }
            ],
            "date": "2023-06-01T00:00:00+0000",
            "passToSalesDate": "2023-06-01",
            "dealer": "0451293",
            "deductions": "VAT_DED",
            "dlr_discount": [
                {
                "description": "Special dealer offer",
                "id": "834515",
                "percentage": true,
                "value": 0.05
                }
            ],
            "extraCosts": [
                {
                "description": "Cleaning service",
                "id": "23461",
                "percentage": false,
                "taxIncluded": false,
                "taxable": true,
                "value": 100
                }
            ],
            "financing": false,
            "language": "it",
            "locationCode": "TO",
            "mandatoryOptionals": "DD3DGCP,DYR07CP",
            "nsc_discount": "f00b2d5b-7e09-456f-8398-3de7ae8a78e9,fbf69c50-b305-4735-ace5-2e38cf41d259",
            "offerId": "string",
            "optionals": "D7S02CP,DLZ04CP",
            "outMode": "S",
            "priceProtection": {
                "bpm": 80,
                "co2": 120,
                "finalPrice": {
                "withoutTaxesAndFees": 150,
                "withTaxDeductionsAndFees": 130
                }
            },
            "priceType": "cataloguePrice",
            "quantity": 5,
            "salesTool": "OMNI_RETAILER",
            "scrapping": true,
            "showFullConfiguration": true,
            "source": "B2C",
            "stock": true,
            "taxYear": 2023,
            "tradeIn": true,
            "tradeInData": {
                "trd_amount": 1000,
                "trd_badge": "20",
                "trd_body": "3128",
                "trd_brand": "59",
                "trd_energy": "2",
                "trd_family": "326",
                "trd_gearbox": "1",
                "trd_ownershipDate": "2015-09-20",
                "trd_registrationDate": "2010-07-15"
            },
            "trd_applicability": "VO",
            "trim": "0P430RFT",
            "version": "2PK0P1JESFB0A0F0",
            "vin": "VF3M4DGZUNS041736",
            "zipCode": "10127",
            "expProdDate": "2023-06-01",
            "workingCO2": "80",
            "subtotals": [
                "totalNCS",
                "totalNCSEcom",
                "finalPriceNCS"
            ],
            "productStage": "PREVIEW",
            "promoStaging": false
            }
 
       """
       
    * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
    * def generatedChecksum = utility.result
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
  Given url omniUrl
  And path '/pricing/v1/vehicle'

     
  And header Authorization = 'Bearer ' + token
  And header Accept = 'application/json'
  And header Content-Type = 'application/json' 

  And header x-trace-id = 'karate-test-12345'
   
  And header x-country-id = generatedChecksum
      
  And request RequestBody
  When method post

  Then status 404

Scenario: Retrieve Prices of an array of multiple vehicles

     * def RequestBody = 
        """
        {
            "brand": "83",
            "country": "AT",
            "language": "de",
            "source": "B2C",
            "vehicles": [
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },{
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },{
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },{
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                },
                {
                    "color": "414",
                    "engine": "EXC797",
                    "fuel": "3",
                    "optionals": [],
                    "trim": "034",
                    "version": "630.PRP.4.000"
                }
            ]
        }
       """
   
    * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
    * def generatedChecksum = utility.result
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum
        
    Given url omniUrl
    And path '/pricing/v1/vehicle-array'

        
    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json' 

    And header x-trace-id = 'karate-test-12345'
    
    And header x-country-id = generatedChecksum
        
    And request RequestBody
    When method post

    Then status 200

Scenario: Apply price adjustments on vehicule

     * def RequestBody = 
        """
        {
            "accessories": [
                {
                "description": "Accessory description",
                "discount": 150,
                "id": "34126232",
                "labourCost": 1000,
                "labourTime": 1.5,
                "withoutTaxes": 1000
                }
            ],
            "brand": "AP",
            "color": {
                "id": "",
                "basePrice": 1000
            },
            "connectedServices": [
                {
                "description": "Connected Service",
                "discount": 150,
                "id": "CX5256",
                "withoutTaxes": 250
                }
            ],
            "contracts": [
                {
                "description": "Contract description",
                "discount": 150,
                "id": "24632435",
                "options": [
                    {
                    "id": "125",
                    "quantity": 2,
                    "withoutTaxes": 100
                    }
                ],
                "withoutTaxes": 500
                }
            ],
            "conversion": {
                "co2": 198,
                "description": "Conversion description",
                "id": "CONV1",
                "optionals": [
                {
                    "id": "XG82",
                    "withoutTaxes": 200
                }
                ],
                "withoutTaxes": 500
            },
            "country": "IT",
            "deductions": "VAT_DED",
            "expProdDate": "2023-06-01",
            "extraCosts": [
                {
                "description": "Cleaning service",
                "id": "23461",
                "percentage": false,
                "taxIncluded": false,
                "taxable": true,
                "value": 100
                }
            ],
            "financing": false,
            "language": "it",
            "locationCode": "TO",
            "optionals": [
                {
                "id": "",
                "basePrice": 1000
                }
            ],
            "mandatoryOptionals": "DD3DGCP,DYR07CP",
            "priceType": "cataloguePrice",
            "quantity": 5,
            "salesTool": "OMNI_RETAILER",
            "scrapping": true,
            "showFullConfiguration": true,
            "source": "B2C",
            "taxYear": 2023,
            "tradeIn": true,
            "tradeInData": {
                "trd_amount": 1000
            },
            "trd_applicability": "VO",
            "trim": {
                "id": "",
                "basePrice": 1000
            },
            "version": {
                "id": "",
                "basePrice": 1000
            },
            "vin": "VF3M4DGZUNS041736",
            "zipCode": "10127",
            "subtotals": [
                "totalNCS",
                "totalNCSEcom",
                "finalPriceNCS"
            ],
            "discounts": [
                {
                "id": "string",
                "description": "string",
                "type": "string",
                "percentage": true,
                "value": 100,
                "accountingCode": "ACC123",
                "startDate": "2022-09-01 00:00:00",
                "endDate": "2022-09-01 00:00:00",
                "eotpcode": "EOTP456",
                "operationcode": "OP789",
                "subType": "string",
                "hidden": false,
                "salesTool": "string",
                "unconditioned": true,
                "codeLocation": "string",
                "disclaimer": "string",
                "disclaimerUrl": "string",
                "contactType": "string",
                "maximumUses": 10,
                "journey": "string",
                "ecobonusDisable": true,
                "code": "string",
                "coupon": "string",
                "applicability": "all",
                "codeOpt": "OPT456",
                "promoTarget": "string",
                "promoUser": "HQ"
                }
            ]
            }
 
       """
   
    * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
    * def generatedChecksum = utility.result
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum
        
    Given url omniUrl
    And path '/pricing/v1/price-editor'

        
    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json' 

    And header x-trace-id = 'karate-test-12345'
    
    And header x-country-id = generatedChecksum
        
    And request RequestBody
    When method post

    Then status 400

Scenario: Retrieve the wrapper of the deductions

     * def RequestBody = 
        """
       {
        "country": "IT",
        "brand": "GG",
        "vehicleUse": "PV",
        "source": "B2B",
        "language": "it"
        }
 
       """
   
    * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
    * def generatedChecksum = utility.result
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum
        
    Given url omniUrl
    And path '/pricing/v1/deductions'

        
    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json' 

    And header x-trace-id = 'karate-test-12345'
    
    And header x-country-id = generatedChecksum
        
    And request RequestBody
    When method post

    Then status 200

Scenario: Retrieve the pricing for associated service contracts

     * def RequestBody = 
        """
        {
            "brand":"GG",
            "contracts":[{
                "description":"EXTENDED CARE PREMIUM    ",
                "discount":null,
                "id":"A",
                "options":[],
                "withoutTaxes":176.76
            },
            {
                "description":"COMPLETE CARE PLUS",
                "discount":null,
                "id":"C","options":[],
                "withoutTaxes":1291.68
            }],

            "country":"BE",
            "deductions":null,
            "engine":"ESS00110",
            "fuel":"",
            "language":"fr",
            "locationCode":"",
            "source":"B2C",
            "vehicleUse":"PV"
        }
 
       """
   
    * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
    * def generatedChecksum = utility.result
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum
        
    Given url omniUrl
    And path '/pricing/v1/contracts'

        
    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json' 

    And header x-trace-id = 'karate-test-12345'
    
    And header x-country-id = generatedChecksum
        
    And request RequestBody
    When method post

    Then status 200

Scenario: Retrieve the total price for a list of vehicle accessories

     * def RequestBody = 
        """
        {
            "accessories": [
                {
                "description": "Accessory description",
                "discount": 150,
                "id": "34126232",
                "labourCost": 1000,
                "labourTime": 1.5,
                "withoutTaxes": 1000
                }
            ],
            "brand": "GG",
            "country": "IT",
            "deductions": "26",
            "engine": "MK",
            "fuel": "02",
            "language": "it",
            "locationCode": "TO",
            "source": "B2C",
            "vehicleUse": "PV"
        }
 
       """
   
    * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
    * def generatedChecksum = utility.result
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum
        
    Given url omniUrl
    And path '/pricing/v1/accessories'

        
    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json' 

    And header x-trace-id = 'karate-test-12345'
    
    And header x-country-id = generatedChecksum
        
    And request RequestBody
    When method post

    Then status 200