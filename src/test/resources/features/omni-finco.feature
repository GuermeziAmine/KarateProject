Feature: OMNI Finco Service Logic

    Background:
        * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net' + '/dev'
        * def authResult = call read('auth.feature')
        * def token = authResult.authToken
Scenario: Retrieve the increase price for each components of a configuration

    * def RequestBody = 
        """
                {
        "   context": {
            "siteCode": "MNO",
            "componentCode": "WID",
            "journeyType": "SCVN",
            "correlationId": "GHNyq6NXhWn56we0KP",
            "renderType": "ONLINE",
            "financeJourneyCode": "RENTING",
            "distributionBrand": "AP",
            "countryCode": "FR",
            "userType": "CUSTOMER",
            "languageCode": "fr",
            "isAsynchronous": true,
            "isFrom": true,
            "customer": {
            "relationshipType": "FAM",
            "relationshipCompany": "QPWO1Z7I1SWC1Z4ZPXIBOPZKTXVE3XRLSZSLI6G1NHXWBGZI0NWGJDZYPNMF81P0FN9EO4FTV53M7PP60RCA54",
            "youngestDriverAge": 1,
            "postCode": "CHFkHVSon3",
            "holderAge": 1,
            "provinceCode": "T9XM1C7Dkp9XN6hnvdWabe93LWnQR98aOcOmP18mcAuWhrQopVMDtN7H0tsqPYc2BU0l2ZBehIqOX6cJRyOF",
            "clientType": "P",
            "projectChoice": {
                "role": "regular leasing, high mileage leasing, opel2go, leasing of e-motors, etc...",
                "contractType": "regular leasing, high mileage leasing"
            }
            },
            "colour": "QURK45TCCHRF5ML1C4CY80GC3PG"
        },
        "vehicleConfiguration": {
            "manufacturerCode": "4S2W3R",
            "manufacturerCodeType": "LCDV",
            "optionsEncoding": "LCDV4",
            "features": {
            "kind": "VP",
            "energy": "04",
            "cubicCapacity": 1499,
            "maximumPowers": [
                {
                "value": 140,
                "unit": "BHP",
                "key": ""
                }
            ],
            "grossVehicleWeightRating": 1.999,
            "usefulLoad": 0.517
            },
            "state": {
            "stateType": "VN",
            "mileage": 0,
            "firstRegistrationDate": "2026-04-05",
            "isStock": true,
            "stockOwner": "NSC"
            },
            "dealer": {
            "distributorActorCode": "4RERMAF6V4SUSGWK5USFWSVGKD7R952RSZY83UMO9K60HWWYH0JV3YN",
            "territoriality": "3",
            "salesmanId": "CDK9ZRX4ZD8DI3GG8YKJZ4DK920HAISF072SWFP9J0RJA1U1IVWGTOOIE1USJFF3WOOL89VH71CS4"
            },
            "pricing": {
            "netPriceExclTax": 0,
            "netPriceInclTax": 0,
            "basicPriceExclTax": 0,
            "basicPriceInclTax": 0,
            "tariffArea": "3"
            },
            "fiscalProperties": {
            "co2Emissions": 0,
            "wltpCo2Emissions": 0,
            "fiscalHorsePower": 0,
            "vatBasicRate": 20,
            "vatCustomerRate": 5,
            "immRate": 0,
            "immBasicRate": 0,
            "nova": {
                "ratePct": 100,
                "bonusLimitAmount": 0,
                "malusAmount": 0,
                "bonusMalusAmount": 0
            },
            "registrationFees": 0,
            "registrationFeesIncluded": 0,
            "roadFundLicence": 0,
            "roadFundLicenceIncluded": 0,
            "impostoProvincilaleDiTrascrizione": 0,
            "bpmAmountIncluded": 0,
            "ecoBonus": 0,
            "scrappageIncentive": 0,
            "ecoMalus": 0
            },
            "otrCosts": {
            "netTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "basicTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCosts": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCostsTaxExempt": 0,
            "delivery": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "welcomePack": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "accessoriesAssembleCost": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "engraving": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "transformation": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "fuel": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "impostoSobreVeiculos": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "ecovalor": {
                "amountExclTax": 0,
                "amountInclTax": 0
            }
            },
            "otrCostsIncluded": {
            "netTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "basicTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCosts": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCostsTaxExempt": 0,
            "delivery": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "welcomePack": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "accessoriesAssembleCost": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "engraving": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "transformation": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "fuel": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "impostoSobreVeiculos": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "ecovalor": {
                "amountExclTax": 0,
                "amountInclTax": 0
            }
            },
            "vin": "5VM6I4NWDIJ5PK13UOOOC95YE3ZTEU6ZY5AP22WFL1P8ZM29PWIT6TZ9RCE6MRLO4IMDXIBVERPZYVD78YR4E9TN",
            "rvAdjustment": {
            "increasePercent": 0,
            "balloonAmountOverride": 0
            },
            "options": [
            {
                "code": "ZHDG",
                "isPack": true,
                "pricing": {
                "netPriceExclTax": 0,
                "netPriceInclTax": 0,
                "basicPriceExclTax": 0,
                "basicPriceInclTax": 0,
                "tariffArea": "3"
                }
            }
            ],
            "accessories": [
            {
                "key": "GJVf+L+r0+NRzQ9DH0X9lGgUsiKlh6Frwln6BjnqdqN",
                "pricing": {
                "amountExclTax": 0,
                "amountInclTax": 0
                },
                "isMounted": true,
                "vatApplicable": "VAT_BASIC_RATE",
                "longLabelBase64": "string"
            }
            ],
            "cashServices": [
            {
                "amountExclTax": 0,
                "amountInclTax": 0,
                "code": "2divqbQc_qGjv2OKC1TgnWJpoo1UFyLKGMn3DkzEoH012yZDXCYzY1oEDGeCx7hvIuLf",
                "vatRate": 0
            }
            ],
            "noAdditionalDiscountToApply": true,
            "financingCustomisation": {
            "renderAmount": {
                "nature": "IT",
                "inclCarTax": true,
                "inclRegistrationTax": true
            }
            },
            "appliedDiscountRefs": [
            {
                "externalId": "ZA8mj6X4zADQI_Bm4QQu94aRtNqerITBY3iL91astUg7SEq10f",
                "originAppCode": "D49HR8L4T16U",
                "type": "aexbXlBBs3wplBAWe5jQ",
                "subType": "rrJfhwYM8iQQ37Q_mWNg"
            }
            ],
            "presentation": {
            "longLabel": "9*+jeB}(F&oVBz*1@\";H42ah}\"\"uVt+\"N4+foVJM.y==",
            "longLabelBase64": "/k9nhY7UK3p6Ynjyd6r_ma+/le4Mqv2L/POSqnO2g2OJhoRXSgqYOKRNOJCTEPfIVqdwTaXOjQiEGX0BdNwkPPbZm"
            },
            "promoCode": "string"
        },
        "options": [
            {
            "code": "ZHDG",
            "isPack": true,
            "pricing": {
                "netPriceExclTax": 0,
                "netPriceInclTax": 0,
                "basicPriceExclTax": 0,
                "basicPriceInclTax": 0,
                "tariffArea": "3"
            }
            }
        ],
        "parameters": {
            "duration": 49,
            "deposit": 20,
            "cashDeposit": 0,
            "depositAmountKind": "PCT",
            "depositAmountNature": "TC",
            "globalMileage": 40833,
            "annualMileage": 10000,
            "residualValue": 0,
            "residualValueAmountKind": "MT",
            "residualValueAmountNature": "HT",
            "productKey": "LOA",
            "balloon": 0,
            "balloonAmountKind": "MT",
            "balloonAmountNature": "HT",
            "services": [
            {
                "serviceCode": "33X33X3",
                "packageCode": "33X3",
                "included": true,
                "duration": 49,
                "globalMileage": 40833
            }
            ],
            "isConfirmationOnServiceLevelGiven": true,
            "payloadBase64": "pCNJZsLYCalAWVVj/lJO8uOobwK+WhIFQeMBhoz+qeQ+OxAW4E7b+E/RwSKO"
        }
        }
        """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/finco/v1/optional-increase-price'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'    
         
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 400
    
    
Scenario: Retrieve the increase price for each components of a accessories 

      * def RequestBody = 
      """
            {
            "context": {
            "siteCode": "CF3",
            "componentCode": "WID",
            "journeyType": "SCVN",
            "correlationId": "zAnJaDrLaLgQqv1eDn2EOKasSPI6JEqmhnMjmTyHdS5d0ixzMnOj40lLL-dM9LiXgJ84sZDGBYIDf5h1-I2wPJCe3lQYHtP",
            "renderType": "ONLINE",
            "financeJourneyCode": "RENTING",
            "distributionBrand": "AP",
            "countryCode": "FR",
            "userType": "CUSTOMER",
            "languageCode": "fr",
            "isAsynchronous": true,
            "isFrom": true,
            "customer": {
            "relationshipType": "FAM",
            "relationshipCompany": "8X98M5HUT5YQOGY8O9YJE71ASSNDX0GFEI8NAY2",
            "youngestDriverAge": 1,
            "postCode": "R JKPgVU6lLHlXWmfUv3tLyGH4Iva4S",
            "holderAge": 1,
            "provinceCode": "HFAA6dZRjZRWCymBer",
            "clientType": "P"
            },
            "colour": "6SBUAZP_SB9HD6VVRBXAXH70KZJVOFBXJIF64OTKWNZW2Z"
        },
        "vehicle": {
            "manufacturerCode": "-1CBKG YNNE 0TB7Q7-2Q-409-",
            "manufacturerCodeType": "LCDV",
            "optionsEncoding": "LCDV4",
            "features": {
            "kind": "VP",
            "energy": "04",
            "cubicCapacity": 1499,
            "maximumPowers": [
                {
                "value": 140,
                "unit": "BHP",
                "key": ""
                }
            ],
            "grossVehicleWeightRating": 1.999,
            "usefulLoad": 0.517
            },
            "state": {
            "stateType": "VN",
            "mileage": 0,
            "firstRegistrationDate": "2026-04-05",
            "isStock": true,
            "stockOwner": "NSC"
            },
            "dealer": {
            "distributorActorCode": "9EDKIU4CZ57QEHSR28D2RM2O1V9F2M8RAUCJO2YHZ51DWL6ATY26XR935I0T0C5",
            "territoriality": "3",
            "salesmanId": "1NFT8RQ4U2H1V5L8LQC0M68M24SLS92SRFLNUJO5W4P"
            },
            "pricing": {
            "netPriceExclTax": 0,
            "netPriceInclTax": 0,
            "basicPriceExclTax": 0,
            "basicPriceInclTax": 0,
            "tariffArea": "3"
            },
            "fiscalProperties": {
            "co2Emissions": 0,
            "wltpCo2Emissions": 0,
            "fiscalHorsePower": 0,
            "vatBasicRate": 20,
            "vatCustomerRate": 5,
            "immRate": 0,
            "immBasicRate": 0,
            "nova": {
                "ratePct": 100,
                "bonusLimitAmount": 0,
                "malusAmount": 0,
                "bonusMalusAmount": 0
            },
            "registrationFees": 0,
            "registrationFeesIncluded": 0,
            "roadFundLicence": 0,
            "roadFundLicenceIncluded": 0,
            "impostoProvincilaleDiTrascrizione": 0,
            "bpmAmountIncluded": 0,
            "ecoBonus": 0,
            "scrappageIncentive": 0,
            "ecoMalus": 0
            },
            "otrCosts": {
            "netTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "basicTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCosts": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCostsTaxExempt": 0,
            "delivery": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "welcomePack": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "accessoriesAssembleCost": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "engraving": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "transformation": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "fuel": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "impostoSobreVeiculos": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "ecovalor": {
                "amountExclTax": 0,
                "amountInclTax": 0
            }
            },
            "otrCostsIncluded": {
            "netTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "basicTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCosts": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCostsTaxExempt": 0,
            "delivery": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "welcomePack": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "accessoriesAssembleCost": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "engraving": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "transformation": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "fuel": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "impostoSobreVeiculos": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "ecovalor": {
                "amountExclTax": 0,
                "amountInclTax": 0
            }
            },
            "rvAdjustment": {
            "increasePercent": 0,
            "balloonAmountOverride": 0
            },
            "options": [
            {
                "code": "ZHDG",
                "isPack": true,
                "pricing": {
                "netPriceExclTax": 0,
                "netPriceInclTax": 0,
                "basicPriceExclTax": 0,
                "basicPriceInclTax": 0,
                "tariffArea": "3"
                }
            }
            ],
            "accessories": [
            {
                "key": "5LzoYI2e7sTx",
                "pricing": {
                "amountExclTax": 0,
                "amountInclTax": 0
                },
                "isMounted": true,
                "vatApplicable": "VAT_BASIC_RATE",
                "longLabelBase64": "string"
            }
            ],
            "cashServices": [
            {
                "amountExclTax": 0,
                "amountInclTax": 0,
                "code": "mHnGjyshYtXVQ",
                "vatRate": 0
            }
            ],
            "noAdditionalDiscountToApply": true,
            "financingCustomisation": {
            "renderAmount": {
                "nature": "IT",
                "inclCarTax": true,
                "inclRegistrationTax": true
            }
            },
            "vin": "09KZ9AQ9UH2RIZXNMYK12DKYIUKNJXV83HGC9LPU4E8TK64A",
            "presentation": {
            "longLabel": "E;B3.{YXWD((Ypzq7nsFPmyKzUG+1",
            "longLabelBase64": "BV8BfNfHBPaBp0bH3wzG+1NIg4qpHmJhlwf5T+WtRv_vLYaA3Zwd2sE0AaXBwhFdupd98_BafWM2"
            },
            "appliedDiscountRefs": [
            {
                "externalId": "28k0FbXxyn2y5EF82-FAnVl4qQHNZaz6LCDC47o4C2_7-dv5gz",
                "originAppCode": "XYORWIGVZXX0",
                "type": "5rxtTGTjM+l7quPZ8wvp",
                "subType": "9s_EaC_CFXTid0Wvbq8+"
            }
            ],
            "promoCode": "string"
        },
        "accessories": [
            {
            "key": "pyzwXdtMgd8b8cxS",
            "pricing": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "isMounted": true,
            "vatApplicable": "VAT_BASIC_RATE",
            "longLabelBase64": "string"
            }
        ],
        "parameters": {
            "duration": 49,
            "deposit": 20,
            "cashDeposit": 0,
            "depositAmountKind": "PCT",
            "depositAmountNature": "TC",
            "globalMileage": 40833,
            "annualMileage": 10000,
            "residualValue": 0,
            "residualValueAmountKind": "MT",
            "residualValueAmountNature": "HT",
            "productKey": "LOA",
            "balloon": 0,
            "balloonAmountKind": "MT",
            "balloonAmountNature": "HT",
            "services": [
            {
                "serviceCode": "33X33X3",
                "packageCode": "33X3",
                "included": true,
                "duration": 49,
                "globalMileage": 40833
            }
            ],
            "isConfirmationOnServiceLevelGiven": true,
            "payloadBase64": "787y3DQhtqRifN=uqVN_xYvYOxVm7+/xq0RbI2+"
        }
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/finco/v1/accessories-increase-price'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 400
Scenario: Retrieve detailed vehicle simulation 
     * def RequestBody = 
      """
        {
             "context": {
            "siteCode": "MNO",
            "componentCode": "WID",
            "journeyType": "SCVN",
            "correlationId": "AtIj6rnUHnpzxJfGVajoT70g6jJhn9XkOE-n9mHHpoPn0izw9-eudSQTdf9P-WOaBR5Ua-FAAeIGBUUwxjS10f5SjEr0QoS0WS-",
            "renderType": "ONLINE",
            "financeJourneyCode": "RENTING",
            "distributionBrand": "AP",
            "countryCode": "FR",
            "userType": "CUSTOMER",
            "languageCode": "fr",
            "isAsynchronous": true,
            "isFrom": true,
            "customer": {
            "relationshipType": "FAM",
            "relationshipCompany": "JZ842XZGFYBD2EFM1WBSJL52057HBDCXQBM8PFG8KLD8C1XICBJEY238OI4BR14G7DHJ54G69898D035K6J",
            "youngestDriverAge": 1,
            "postCode": "I8qmIMUFH8JpC4S7x5tElYlTpmI 4iBvSJumTVuCa5s7Wof6mqDoJmpps13ttD307GkSrwB7rIvCJHi3tTo4",
            "holderAge": 1,
            "provinceCode": "SyEIhbJEWYheLunwfUKShjCGf",
            "clientType": "P",
            "projectChoice": {
                "role": "regular leasing, high mileage leasing, opel2go, leasing of e-motors, etc...",
                "contractType": "regular leasing, high mileage leasing"
            }
            },
            "colour": "RC07CAZQTL6LYJ2JLZMVJS1RPDNRLK39KF2C89LF329QIGWUQ__4"
        },
        "vehicle": {
            "manufacturerCode": "",
            "manufacturerCodeType": "",
            "optionsEncoding": "LCDV4",
            "features": {
            "kind": "VP",
            "energy": "04",
            "cubicCapacity": 1499,
            "maximumPowers": [
                {
                "value": 140,
                "unit": "BHP, means that the unit is break horse power",
                "key": "For a hybrid vehicle, the power represents the combined values of electric and ICE consumption, so use combined"
                }
            ],
            "grossVehicleWeightRating": 1.999,
            "usefulLoad": 0.517
            },
            "state": {
            "stateType": "VN",
            "mileage": 0,
            "firstRegistrationDate": "2026-04-05",
            "isStock": true,
            "stockOwner": "NSC"
            },
            "dealer": {
            "distributorActorCode": "R4UO4HEE4JNDFN1T5C2VXGDE12LOXTHJX23C4Z8PWPYW1GU08D3FDBEIHOH5QD17M2GO4BZFC73BM5LJE",
            "territoriality": "3",
            "salesmanId": "87PB7J69PYOR1IE4W408L7F4IS3SCMFYYBK6LG00UGAFKCA7O48EFONFD9AE6VGRLK6WO7DE2VYDHQXIZ9OF9"
            },
            "pricing": {
            "netPriceExclTax": 0,
            "netPriceInclTax": 0,
            "basicPriceExclTax": 0,
            "basicPriceInclTax": 0,
            "tariffArea": "3"
            },
            "fiscalProperties": {
            "co2Emissions": 0,
            "wltpCo2Emissions": 0,
            "fiscalHorsePower": 0,
            "vatBasicRate": 20,
            "vatCustomerRate": 5,
            "immRate": 0,
            "immBasicRate": 0,
            "nova": {
                "ratePct": 100,
                "bonusLimitAmount": 0,
                "malusAmount": 0,
                "bonusMalusAmount": 0
            },
            "registrationFees": 0,
            "registrationFeesIncluded": 0,
            "roadFundLicence": 0,
            "roadFundLicenceIncluded": 0,
            "impostoProvincilaleDiTrascrizione": 0,
            "bpmAmountIncluded": 0,
            "ecoBonus": 0,
            "scrappageIncentive": 0,
            "ecoMalus": 0
            },
            "otrCosts": {
            "netTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "basicTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCosts": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCostsTaxExempt": 0,
            "delivery": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "welcomePack": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "accessoriesAssembleCost": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "engraving": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "transformation": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "fuel": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "impostoSobreVeiculos": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "ecovalor": {
                "amountExclTax": 0,
                "amountInclTax": 0
            }
            },
            "otrCostsIncluded": {
            "netTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "basicTransportFees": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCosts": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "variousCostsTaxExempt": 0,
            "delivery": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "welcomePack": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "accessoriesAssembleCost": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "engraving": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "transformation": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "fuel": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "impostoSobreVeiculos": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "ecovalor": {
                "amountExclTax": 0,
                "amountInclTax": 0
            }
            },
            "rvAdjustment": {
            "increasePercent": 0,
            "balloonAmountOverride": 0
            },
            "vin": "RJN0ZNA19I9S",
            "options": [
            {
                "code": "ZHDG",
                "isPack": true,
                "pricing": {
                "netPriceExclTax": 0,
                "netPriceInclTax": 0,
                "basicPriceExclTax": 0,
                "basicPriceInclTax": 0,
                "tariffArea": "3"
                }
            }
            ],
            "accessories": [
            {
                "key": "mL09fVdHTfgHZUm5koazbU1r4JmL9YSdW81IOWzqLqFzaPxgTA+__B-5qchNJcLh+tYgoqug2y+nBYrh",
                "pricing": {
                "amountExclTax": 0,
                "amountInclTax": 0
                },
                "isMounted": true,
                "vatApplicable": "VAT_BASIC_RATE",
                "longLabelBase64": "string"
            }
            ],
            "cashServices": [
            {
                "amountExclTax": 0,
                "amountInclTax": 0,
                "code": "ehnvdDo5xfpX8jeA2bsb97YlloLp9bocPpHhMoCz5aH9NH5mV1DyFNrdcEUmDEa2aGh",
                "vatRate": 0
            }
            ],
            "appliedDiscountRefs": [
            {
                "externalId": "string",
                "originAppCode": "string",
                "type": "string",
                "subType": "string"
            }
            ],
            "noAdditionalDiscountToApply": true,
            "financingCustomisation": {
            "renderAmount": {
                "nature": "IT",
                "inclCarTax": true,
                "inclRegistrationTax": true
            }
            },
            "presentation": {
            "longLabel": ";YRL8Pdhi JY;uVV'A/qPL4_nQE9l Q}nb7jFJQaJUo,he5wyNAqTlGJr_c3Sm|nXNkJ/rgaNe7L8Fs9y*eD3ZqwS2hb=",
            "longLabelBase64": "tTyPMirRWiFeq2oA3/52tas6NiIsTYW4bUeGyeYJ+tScKRfvycKQBo71x/rdC=edlWmcYICvrS_94/RIqMxHbHI+d4Exji7Eo3B"
            },
            "promoCode": "string"
        },
        "parameters": {
            "duration": 49,
            "deposit": 20,
            "cashDeposit": 0,
            "depositAmountKind": "PCT",
            "depositAmountNature": "TC",
            "globalMileage": 40833,
            "annualMileage": 10000,
            "residualValue": 0,
            "residualValueAmountKind": "MT",
            "residualValueAmountNature": "HT",
            "productKey": "LOA",
            "balloon": 0,
            "balloonAmountKind": "MT",
            "balloonAmountNature": "HT",
            "services": [
            {
                "serviceCode": "33X33X3",
                "packageCode": "33X3",
                "included": true,
                "duration": 49,
                "globalMileage": 40833
            }
            ],
            "isConfirmationOnServiceLevelGiven": true,
            "payloadBase64": "fJ7X+3Mh"
        },
        "partExchange": {
            "earlySettlement": 0,
            "tradeIn": 0,
            "cashback": 0,
            "equity": 0,
            "contribution": 0
        },
        "isShowServicePricing": false
    }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/finco/v1/vehicle-simulation-details'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 400
Scenario: Retrieve detailed financial simulation

    * def RequestBody = 
        """
      {
       "financeFileInput": {
        "context": {
        "siteCode": "MNO",
        "componentCode": "WID",
        "journeyType": "SCVN",
        "correlationId": "SfFt-w1YPs5w9IYxOeStdvGavPlFJnYlbo5MSB8iNCpf1Sv1WT3bvx76wFdpl92t1iHVp7Q-Ga",
        "renderType": "ONLINE",
        "financeJourneyCode": "RENTING",
        "distributionBrand": "AP",
        "countryCode": "FR",
        "userType": "CUSTOMER",
        "languageCode": "fr",
        "isAsynchronous": true,
        "isFrom": true,
        "customer": {
            "relationshipType": "FAM",
            "relationshipCompany": "69CRMIWHV",
            "youngestDriverAge": 1,
            "postCode": "E7rthjICKj68DzoH",
            "holderAge": 1,
            "provinceCode": "UdZ17TARJMHCcSwzC2BqpqWZdTTe913kE0poJBBuQmSN2GCUyWirR4rvwVingBQSPpSVjUMAoMblrHnOOBom",
            "clientType": "P",
            "projectChoice": {
            "role": "regular leasing, high mileage leasing, opel2go, leasing of e-motors, etc...",
            "contractType": "regular leasing, high mileage leasing"
            }
        },
        "colour": "LMQOPSS31NZ03AA"
        },
        "vehicle": {
        "manufacturerCode": "",
        "manufacturerCodeType": "",
        "optionsEncoding": "LCDV4",
        "features": {
            "kind": "VP",
            "energy": "04",
            "cubicCapacity": 1499,
            "maximumPowers": [
            {
                "value": 140,
                "unit": "BHP, means that the unit is break horse power",
                "key": "For a hybrid vehicle, the power represents the combined values of electric and ICE consumption, so use combined"
            }
            ],
            "grossVehicleWeightRating": 1.999,
            "usefulLoad": 0.517
        },
        "state": {
            "stateType": "VN",
            "mileage": 0,
            "firstRegistrationDate": "2026-04-05",
            "isStock": true,
            "stockOwner": "NSC"
        },
        "dealer": {
            "distributorActorCode": "ZR9788FEK3SGQXNETL6ZM22PHYE3082NCCGKI5OXMGAY2QCYL4O1ZNBV7DM",
            "territoriality": "3",
            "salesmanId": "SIY2G1VRMJC8AXSFUKRDETVM326QC5SVRS2Y1NREWNU7A9684A39PBWXJMMIE64AK343F3L01FI"
        },
        "pricing": {
            "netPriceExclTax": 0,
            "netPriceInclTax": 0,
            "basicPriceExclTax": 0,
            "basicPriceInclTax": 0,
            "tariffArea": "3"
        },
        "fiscalProperties": {
            "co2Emissions": 0,
            "wltpCo2Emissions": 0,
            "fiscalHorsePower": 0,
            "vatBasicRate": 20,
            "vatCustomerRate": 5,
            "immRate": 0,
            "immBasicRate": 0,
            "nova": {
            "ratePct": 100,
            "bonusLimitAmount": 0,
            "malusAmount": 0,
            "bonusMalusAmount": 0
            },
            "registrationFees": 0,
            "registrationFeesIncluded": 0,
            "roadFundLicence": 0,
            "roadFundLicenceIncluded": 0,
            "impostoProvincilaleDiTrascrizione": 0,
            "bpmAmountIncluded": 0,
            "ecoBonus": 0,
            "scrappageIncentive": 0,
            "ecoMalus": 0
        },
        "otrCosts": {
            "netTransportFees": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "basicTransportFees": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "variousCosts": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "variousCostsTaxExempt": 0,
            "delivery": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "welcomePack": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "accessoriesAssembleCost": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "engraving": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "transformation": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "fuel": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "impostoSobreVeiculos": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "ecovalor": {
            "amountExclTax": 0,
            "amountInclTax": 0
            }
        },
        "otrCostsIncluded": {
            "netTransportFees": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "basicTransportFees": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "variousCosts": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "variousCostsTaxExempt": 0,
            "delivery": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "welcomePack": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "accessoriesAssembleCost": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "engraving": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "transformation": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "fuel": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "impostoSobreVeiculos": {
            "amountExclTax": 0,
            "amountInclTax": 0
            },
            "ecovalor": {
            "amountExclTax": 0,
            "amountInclTax": 0
            }
        },
        "rvAdjustment": {
            "increasePercent": 0,
            "balloonAmountOverride": 0
        },
        "vin": "9RC7ODFVE3VWL6DGE3R0NG2HY11L8YME1VV8ZQH9A2PFRV8VD097CPK2KDH5Q01GZ2WFGUUD83Z5BN0AEUNJ5FOU",
        "options": [
            {
            "code": "ZHDG",
            "isPack": true,
            "pricing": {
                "netPriceExclTax": 0,
                "netPriceInclTax": 0,
                "basicPriceExclTax": 0,
                "basicPriceInclTax": 0,
                "tariffArea": "3"
            }
            }
        ],
        "accessories": [
            {
            "key": "DVyDOwx_iBPWjOEUBfTH515Pb7+aqLmYw09j5eG7g7kFsK",
            "pricing": {
                "amountExclTax": 0,
                "amountInclTax": 0
            },
            "isMounted": true,
            "vatApplicable": "VAT_BASIC_RATE",
            "longLabelBase64": "string"
            }
        ],
        "cashServices": [
            {
            "amountExclTax": 0,
            "amountInclTax": 0,
            "code": "Oozjpozex6Grzr6YjqGBmWhHXzss_sBJroS6tqb7eNU0OxtuHMF7npqjSm",
            "vatRate": 0
            }
        ],
        "appliedDiscountRefs": [
            {
            "externalId": "string",
            "originAppCode": "string",
            "type": "string",
            "subType": "string"
            }
        ],
        "noAdditionalDiscountToApply": true,
        "financingCustomisation": {
            "renderAmount": {
            "nature": "IT",
            "inclCarTax": true,
            "inclRegistrationTax": true
            }
        },
        "presentation": {
            "longLabel": ");+JUQ}'QA5L4WqFWo!cARXS3+gXwja DNhmfKK4zy7qXz83DLte7Yy*==",
            "longLabelBase64": "rWxkBe2fYC+cGQeTXu=mSLU6yE1lFrH_8gBvQmEYsW_Wokto"
        },
        "promoCode": "string"
        },
        "parameters": {
        "duration": 49,
        "deposit": 20,
        "cashDeposit": 0,
        "depositAmountKind": "PCT",
        "depositAmountNature": "TC",
        "globalMileage": 40833,
        "annualMileage": 10000,
        "residualValue": 0,
        "residualValueAmountKind": "MT",
        "residualValueAmountNature": "HT",
        "productKey": "LOA",
        "balloon": 0,
        "balloonAmountKind": "MT",
        "balloonAmountNature": "HT",
        "services": [
            {
            "serviceCode": "33X33X3",
            "packageCode": "33X3",
            "included": true,
            "duration": 49,
            "globalMileage": 40833
            }
        ],
        "isConfirmationOnServiceLevelGiven": true,
        "payloadBase64": "z85y=Kgkd4BQOkOFtZnD=8e"
        },
        "partExchange": {
        "earlySettlement": 0,
        "tradeIn": 0,
        "cashback": 0,
        "equity": 0,
        "contribution": 0
        },
        "isShowServicePricing": false
    },
    "mopUpdateInput": {
        "brand": "string",
        "country": "string",
        "mopId": "string",
        "userId": "string",
        "userType": "string",
        "financeQuote": {
        "idQuotation": "string",
        "vehicleDiscount": 0,
        "vehicleDiscountWithoutTax": 0,
        "object": "string"
        }
    }
    }
        """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/finco/v1/finance-details'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'    
         
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 400

Scenario: Get vehicle simulation details array

    * def RequestBody = 
        """
        {
        "vehicleSimulationDetailsListDTO": [
            {
            "context": {
                "siteCode": "MNO",
                "componentCode": "WID",
                "journeyType": "SCVN",
                "correlationId": "8mijIxC1JTtHaXzmwc1hlNvO0MzU-CV1wDrrGmPUmyRfS4vCj6JRGifiRLKaKFuqLlreQDMUiu1AbVtpy",
                "renderType": "ONLINE",
                "financeJourneyCode": "RENTING",
                "distributionBrand": "AP",
                "countryCode": "FR",
                "userType": "CUSTOMER",
                "languageCode": "fr",
                "isAsynchronous": true,
                "isFrom": true,
                "customer": {
                "relationshipType": "FAM",
                "relationshipCompany": "9HDEWNV5N7S11FF2INY8VGJZY1DBJN4ZCZR5J0SAJDZ4W7JFP",
                "youngestDriverAge": 1,
                "postCode": "cD ut1pXJTvFstKh2YD5 F7RybBXi9dyiMwlUVloYUaOrffe8dB8b1L7",
                "holderAge": 1,
                "provinceCode": "Eon22jRt5mzG8isO0C0dBA5LKC0sC5zEPv0hZJ3FxMggYJSgx",
                "clientType": "P",
                "projectChoice": {
                    "role": "regular leasing, high mileage leasing, opel2go, leasing of e-motors, etc...",
                    "contractType": "regular leasing, high mileage leasing"
                }
                },
                "colour": "UOQHWELNAX"
            },
            "vehicle": {
                "manufacturerCode": "string",
                "manufacturerCodeType": "string",
                "optionsEncoding": "LCDV4",
                "features": {
                "kind": "VP",
                "energy": "04",
                "cubicCapacity": 1499,
                "maximumPowers": [
                    {
                    "value": 140,
                    "unit": "BHP, means that the unit is break horse power",
                    "key": "For a hybrid vehicle, the power represents the combined values of electric and ICE consumption, so use combined"
                    }
                ],
                "grossVehicleWeightRating": 1.999,
                "usefulLoad": 0.517
                },
                "state": {
                "stateType": "VN",
                "mileage": 0,
                "firstRegistrationDate": "2026-04-05",
                "isStock": true,
                "stockOwner": "NSC"
                },
                "dealer": {
                "distributorActorCode": "LALR21NDF3HN41PJTQCO7Y2E47PZH79PSJVP9IW0MLXWI3MX1O86KSYBQEDK9CCO8X3930DRC7ZMX8FLDH5YM5VMX0V",
                "territoriality": "3",
                "salesmanId": "4NCOVS9Y400EMOD89A37SVPH60S7AMDMDLD3SHM7DZQWX9UM8PQ7TFEBFRP89ILHDISCLA2ZQ7E4QQ7C06JSDGVHMIVZ0KT0VM6"
                },
                "pricing": {
                "netPriceExclTax": 0,
                "netPriceInclTax": 0,
                "basicPriceExclTax": 0,
                "basicPriceInclTax": 0,
                "tariffArea": "3"
                },
                "fiscalProperties": {
                "co2Emissions": 0,
                "wltpCo2Emissions": 0,
                "fiscalHorsePower": 0,
                "vatBasicRate": 20,
                "vatCustomerRate": 5,
                "immRate": 0,
                "immBasicRate": 0,
                "nova": {
                    "ratePct": 100,
                    "bonusLimitAmount": 0,
                    "malusAmount": 0,
                    "bonusMalusAmount": 0
                },
                "registrationFees": 0,
                "registrationFeesIncluded": 0,
                "roadFundLicence": 0,
                "roadFundLicenceIncluded": 0,
                "impostoProvincilaleDiTrascrizione": 0,
                "bpmAmountIncluded": 0,
                "ecoBonus": 0,
                "scrappageIncentive": 0,
                "ecoMalus": 0
                },
                "otrCosts": {
                "netTransportFees": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "basicTransportFees": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "variousCosts": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "variousCostsTaxExempt": 0,
                "delivery": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "welcomePack": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "accessoriesAssembleCost": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "engraving": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "transformation": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "fuel": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "impostoSobreVeiculos": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "ecovalor": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                }
                },
                "otrCostsIncluded": {
                "netTransportFees": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "basicTransportFees": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "variousCosts": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "variousCostsTaxExempt": 0,
                "delivery": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "welcomePack": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "accessoriesAssembleCost": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "engraving": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "transformation": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "fuel": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "impostoSobreVeiculos": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                },
                "ecovalor": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                }
                },
                "rvAdjustment": {
                "increasePercent": 0,
                "balloonAmountOverride": 0
                },
                "vin": "XFGAN1OU0EEPOT18USO",
                "options": [
                {
                    "code": "ZHDG",
                    "isPack": true,
                    "pricing": {
                    "netPriceExclTax": 0,
                    "netPriceInclTax": 0,
                    "basicPriceExclTax": 0,
                    "basicPriceInclTax": 0,
                    "tariffArea": "3"
                    }
                }
                ],
                "accessories": [
                {
                    "key": "SWEC-Ap259lr550Jrtuew",
                    "pricing": {
                    "amountExclTax": 0,
                    "amountInclTax": 0
                    },
                    "isMounted": true,
                    "vatApplicable": "VAT_BASIC_RATE",
                    "longLabelBase64": "string"
                }
                ],
                "cashServices": [
                {
                    "amountExclTax": 0,
                    "amountInclTax": 0,
                    "code": "COfgSPxg6biLZuhKa40d0B3fTiI4LfiHnaL_FLFX3ty8AMJdBGMOW",
                    "vatRate": 0
                }
                ],
                "appliedDiscountRefs": [
                {
                    "externalId": "string",
                    "originAppCode": "string",
                    "type": "string",
                    "subType": "string"
                }
                ],
                "noAdditionalDiscountToApply": true,
                "financingCustomisation": {
                "renderAmount": {
                    "nature": "IT",
                    "inclCarTax": true,
                    "inclRegistrationTax": true
                }
                },
                "presentation": {
                "longLabel": "VipWVE4,atrjbU4IbWza{4yaL4WI+*i8)TE@Ut}Qn}yR W{{/2XToXYBykcLZ.z,L{ym{3+;/1{!G0zWGuH",
                "longLabelBase64": "czJEBx9u2nr=h8A4hZA6Ihrz7BPGfV=ODs"
                },
                "promoCode": "string"
            },
            "parameters": {
                "duration": 49,
                "deposit": 20,
                "cashDeposit": 0,
                "depositAmountKind": "PCT",
                "depositAmountNature": "TC",
                "globalMileage": 40833,
                "annualMileage": 10000,
                "residualValue": 0,
                "residualValueAmountKind": "MT",
                "residualValueAmountNature": "HT",
                "productKey": "LOA",
                "balloon": 0,
                "balloonAmountKind": "MT",
                "balloonAmountNature": "HT",
                "services": [
                {
                    "serviceCode": "33X33X3",
                    "packageCode": "33X3",
                    "included": true,
                    "duration": 49,
                    "globalMileage": 40833
                }
                ],
                "isConfirmationOnServiceLevelGiven": true,
                "payloadBase64": "V4IDP9Z4iJaUw5zfx36v3arivuRHs8D"
            },
            "partExchange": {
                "earlySettlement": 0,
                "tradeIn": 0,
                "cashback": 0,
                "equity": 0,
                "contribution": 0
            },
            "isShowServicePricing": false
            }
        ]
        }
        """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/finco/v1/vehicle-simulation-details-array'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'    
         
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 400


Scenario: Create Offer 

      * def RequestBody = 
      """
      {
         "request": {
            "context": {
            "requestId": "",
            "senderId": "",
            "countryCode": "",
            "language": "",
            "requestTime": ""
            },
            "body": {
            "mopId": "",
            "mopBrand": "",
            "quotationCode": ""
            }
        }
     }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/finco/v1/offline/create-offer'

     
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

Scenario: Retrieve quote details by MOPId

      * def RequestBody = 
      """
        {
        "context": {
            "requestID": "",
            "senderID": "",
            "countryCode": "",
            "language": "",
            "requestTime": ""
        },
        "body": {
            "mopBrand": "",
            "mopId": ""
        }
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/finco/v1/quoteByMOPId'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404