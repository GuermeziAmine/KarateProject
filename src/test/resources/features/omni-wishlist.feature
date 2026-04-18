Feature: OMNI Wishlist Service Logic

Background:
  * def authResult = callonce read('classpath:features/auth.feature')
  * def token = authResult.authToken

Scenario: Save a Configuration in wishlist

     * def RequestBody = 
      """
        {
            "configurationDetails": {
                "configuredBy": "1695116561356024a4e9a-8f39-c7f3-5bbe-4d06e3126ac1",
                "deletionDate": "",
                "guestUserSessionId": "1695116561356024a4e9a-8f39-c7f3-5bbe-4d06e3126ac1",
                "savedFor": "1695116561356024a4e9a-8f39-c7f3-5bbe-4d06e3126ac1",
                "userType": "unlogged",
                "vehicleConfiguration": {
                    "brand": {
                        "code": "57",
                        "desc": "jeep"
                    },
                    "budgetFamily": "L",
                    "color": "CL-111",
                    "colorName": "Couleur pastel Ruby",
                    "completeConfigurationList": [
                        "A-5CB",
                        "U-06S",
                        "U-07B",
                        "U-07L",
                        "U-0T6",
                        "U-0T7",
                        "U-0T9",
                        "U-17C",
                        "U-3B1",
                        "U-3S2",
                        "C-132",
                        "C-140",
                        "C-BNW",
                        "C-GT8",
                        "C-GX4",
                        "C-RCD",
                        "C-XC4",
                        "C-XG8",
                        "8-1M0",
                        "7-2TJ",
                        "7-5ZK",
                        "7-7KQ",
                        "7-GNA",
                        "7-JAL",
                        "S-347",
                        "S-416",
                        "S-9S8",
                        "S-BNH",
                        "L-5IX",
                        "L-80G",
                        "L-LPX",
                        "T-RDP",
                        "T-RTK",
                        "T-RTR",
                        "CL-111",
                        "IN-1B7"
                    ],
                    "couponCode": "string",
                    "disclaimer": {
                        "style": {
                            "displaySize": 0
                        },
                        "text": "string"
                    },
                    "drive": "4",
                    "engineCode": "EXC782",
                    "engineName": "Électrique 115kW (156CV)",
                    "estimatedDeliveryDate": "8-14",
                    "fuelType": "4",
                    "grBodyStyle": "",
                    "horsePower": "115 kW ",
                    "interiorName": "Sellerie tissu noire",
                    "interiors": "IN-1B7",
                    "isFromStock": "",
                    "isVisible": true,
                    "isWcwRequest": false,
                    "language": {
                        "code": "2",
                        "desc": "2"
                    },
                    "listPrice": 38500.01,
                    "market": {
                        "code": "3104",
                        "desc": "BE"
                    },
                    "marketEquipment": "000",
                    "model": {
                        "code": "4200",
                        "desc": "AVENGER BEV"
                    },
                    "monthlyPayment": 398.81,
                    "netPrice": 37921.01,
                    "privacyPolicyChecks": false,
                    "sourceCode": "string",
                    "stillManufacturable": true,
                    "tradeIn": {
                        "code": "string"
                    },
                    "trimCode": "010",
                    "trimName": "AVENGER",
                    "useCod": "VP",
                    "userJourney": "string",
                    "vehicleCode": "57420L2E0000",
                    "vehicleImage": "https://lb.assets.fiat.com/vl-picker-service/rest/getPngImage?wheel=1M0&fuel=4&source=omnimto&body=111&resolution=BIG&mmvs=57420L2E0000&market=3104&seat=1B7&view=EXT&opt=06S,07B,07L,0T6,0T7,0T9,17C,3B1,3S2,132,140,BNW,GT8,GX4,RCD,XC4,XG8,2TJ,5ZK,7KQ,GNA,JAL,347,416,9S8,BNH,5IX,80G,LPX,RDP,RTK,RTR&trim=010&engine=EXC782&width=941&angle=1&model=4200&brand=57&consumer=medium&height=500",
                    "vehicleType": "MTO",
                    "wheels": "8-1M0",
                    "zipCodeRegistration": "string"
                },
                "zoneId": "Europe/Rome"
            },
            "delivery": {
                "deliveryAnticipationAccepted": true,
                "deliveryAtHome": true,
                "deliveryAtHomeCost": {
                    "amount": "",
                    "currency": ""
                },
                "omsOrderId": "",
                "orderedVin": "",
                "reservationExpiration": "",
                "reservationId": "",
                "reservationStatus": "",
                "shippingData": {
                    "city": "",
                    "completeStreet": "",
                    "country": "",
                    "province": "",
                    "zipCode": ""
                }
            },
            "customer": {
                "gigyaId": "1695116561356024a4e9a-8f39-c7f3-5bbe-4d06e3126ac1",
                "magentoUserId": 0
            },
            "financialProduct": {
                "annualMileage": 15000,
                "caApprovalStatus": "",
                "callbackURL": "",
                "commercialCode": "JEC00B+",
                "deposit": {
                    "amount": 7584.2,
                    "currency": ""
                },
                "description": "",
                "duration": 60,
                "financeSimulation": {
                    "parameters": {}
                },
                "financialCode": "19",
                "financialProductCategory": "LOAN_BALL",
                "financialProductTitle": "StretchFin Plus",
                "financialType": "VAC",
                "financialValidityDate": "",
                "isBalloon": true,
                "isFromCS": true,
                "isOffline": true,
                "mofId": "",
                "monthlyPayment": {
                    "amountExclTax": 398.81,
                    "amountInclTax": 398.81,
                    "currency": ""
                },
                "productKey": "VACB"
            },
            "mopCreate": {
                "brand": {
                    "code": "57",
                    "desc": "JE"
                },
                "car": {
                    "CAFNum": "",
                    "CARNum": "",
                    "RRDICode": "",
                    "SCcarDefinition": {
                        "externalColorId": "111",
                        "internalColorId": "1B7",
                        "market": "3104",
                        "optionsIdList": "",
                        "versionId": "57420L2E020000000L"
                    },
                    "WLTP": [
                        {
                            "key": "CO2Class",
                            "value": "A"
                        },
                        {
                            "key": "co2Combined",
                            "unit": "g/km",
                            "value": 0
                        },
                        {
                            "key": "CombinedDriveCycleConsumption",
                            "unit": "l/100km",
                            "value": 0
                        }
                    ],
                    "country": "BE",
                    "derivedModelId": "4200",
                    "derivedModelLabel": "AVENGER BEV",
                    "externalColor": {
                        "code": "111",
                        "isPack": false,
                        "label": "Couleur pastel Ruby"
                    },
                    "fuelCode": "4",
                    "fuelLabel": "Electrique",
                    "gearTypeCode": "2",
                    "genericCarConfig": "",
                    "idVehicle": "",
                    "internalColor": {
                        "code": "1B7",
                        "isPack": false,
                        "label": "Sellerie tissu noire"
                    },
                    "isAddedToBasket": false,
                    "isCompleted": true,
                    "isStock": false,
                    "isValid": true,
                    "isWithFinance": true,
                    "isWithLeasing": false,
                    "isWithRecoverableTax": false,
                    "isWithScrappage": false,
                    "isWithoutTax": false,
                    "kindCode": "VP",
                    "kindLabel": "PWD",
                    "makeCode": "JE",
                    "makeLabel": "Jeep",
                    "market": "3104",
                    "maximumPowerHP": "115 kW ",
                    "mvs": "57420L2E0000",
                    "options": [],
                    "trimLevelCode": "010",
                    "trimLevelLabel": "AVENGER",
                    "urls": [
                        {
                            "link": "https://lb.assets.fiat.com/vl-picker-service/rest/getPngImage?wheel=1M0&fuel=4&source=omnimto&body=111&resolution=BIG&mmvs=57420L2E0000&market=3104&seat=1B7&view=EXT&opt=06S,07B,07L,0T6,0T7,0T9,17C,3B1,3S2,132,140,BNW,GT8,GX4,RCD,XC4,XG8,2TJ,5ZK,7KQ,GNA,JAL,347,416,9S8,BNH,5IX,80G,LPX,RDP,RTK,RTR&trim=010&engine=EXC782&width=941&angle=1&model=4200&brand=57&consumer=medium&height=500",
                            "type": "V3D"
                        },
                        {
                            "link": "https://preprod-www.jeep.be/fr/omni/configurateur?commercialModelCode=4200&mvss=57420L2E0000&color=CL-111&interior=IN-1B7&wheels=8-1M0",
                            "type": "PRODUCT"
                        }
                    ],
                    "vehicleType": "VN",
                    "versionId": "",
                    "versionLabel": "AVENGER"
                },
                "currencyCode": "EUR",
                "customerType": "B2C",
                "journeyType": "NRM",
                "market": {
                    "code": "3104",
                    "desc": "BE"
                },
                "mopType": "NRM",
                "onlineOrderForm": {
                    "sourceName": "OMNI"
                },
                "onlineQuote": {
                    "sourceName": "OMNI"
                },
                "partExchange": {
                    "isValid": true
                },
                "pricingEngineInput": "{\"brand\":\"57\",\"color\":\"111\",\"country\":\"BE\",\"language\":\"2\",\"optionals\":\"\",\"outMode\":\"S\",\"priceType\":\"eStorePrice\",\"show7chars\":true,\"source\":\"B2C\",\"trim\":\"1B7\",\"version\":\"420.L2E.0.000\",\"energy\":\"4\",\"kind\":\"VP\",\"requestFincoData\":true,\"vehicleCode\":\"57420L2E0000\"}",
                "pricingEngineOutput": "{\"price\":{\"accessories\":[],\"connectedServices\":[],\"contractOptions\":[],\"contracts\":[],\"colors\":[{\"code\":\"111\",\"prices\":[{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"cataloguePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0},{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"eStorePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0}]}],\"discounts\":[{\"code\":\"NO PROMO\",\"id\":\"c60d449f-4645-4351-815a-6f8b7d5fa89a\",\"prices\":[{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"cataloguePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0},{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"eStorePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0}],\"type\":\"PRECO\"},{\"code\":\"ROTATION OMNI E2E\",\"id\":\"31e5488b-6d7e-4ba7-b4cf-6936ceb62b95\",\"prices\":[{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"cataloguePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":579,\"withTaxesAndFees\":579,\"withVAT\":579,\"withVATDeduction\":579,\"withoutTaxesAndFees\":478.51},{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"eStorePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":579,\"withTaxesAndFees\":579,\"withVAT\":579,\"withVATDeduction\":579,\"withoutTaxesAndFees\":478.51}],\"type\":\"ROTATION\"}],\"fees\":[],\"incentives\":[],\"optionals\":[],\"subtotals\":[{\"code\":\"optionalFeaturesPrice\",\"prices\":[{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"cataloguePrice\",\"taxes\":[],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0},{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"eStorePrice\",\"taxes\":[],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0}]},{\"code\":\"finalPriceWoTradeIn\",\"prices\":[{\"deductions\":[],\"discounts\":[{\"id\":\"c60d449f-4645-4351-815a-6f8b7d5fa89a\",\"withTaxes\":0,\"withoutTaxes\":0},{\"id\":\"31e5488b-6d7e-4ba7-b4cf-6936ceb62b95\",\"withTaxes\":579,\"withoutTaxes\":478.51}],\"fees\":[],\"incentives\":[],\"priceType\":\"cataloguePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":579,\"withoutTaxesAndFees\":478.51},\"withTaxDeductionsAndFees\":37921.01,\"withTaxesAndFees\":37921.01,\"withVAT\":37921.01,\"withVATDeduction\":37921.01,\"withoutTaxesAndFees\":31339.68},{\"deductions\":[],\"discounts\":[{\"id\":\"c60d449f-4645-4351-815a-6f8b7d5fa89a\",\"withTaxes\":0,\"withoutTaxes\":0},{\"id\":\"31e5488b-6d7e-4ba7-b4cf-6936ceb62b95\",\"withTaxes\":579,\"withoutTaxes\":478.51}],\"fees\":[],\"incentives\":[],\"priceType\":\"eStorePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":579,\"withoutTaxesAndFees\":478.51},\"withTaxDeductionsAndFees\":37921.01,\"withTaxesAndFees\":37921.01,\"withVAT\":37921.01,\"withVATDeduction\":37921.01,\"withoutTaxesAndFees\":31339.68}]},{\"code\":\"vehiclePrice\",\"prices\":[{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"cataloguePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":38500.01,\"withTaxesAndFees\":38500.01,\"withVAT\":38500.01,\"withVATDeduction\":38500.01,\"withoutTaxesAndFees\":31818.19},{\"deductions\":[],\"discounts\":[{\"id\":\"c60d449f-4645-4351-815a-6f8b7d5fa89a\",\"withTaxes\":0,\"withoutTaxes\":0},{\"id\":\"31e5488b-6d7e-4ba7-b4cf-6936ceb62b95\",\"withTaxes\":579,\"withoutTaxes\":478.51}],\"fees\":[],\"incentives\":[],\"priceType\":\"eStorePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":579,\"withoutTaxesAndFees\":478.51},\"withTaxDeductionsAndFees\":37921.01,\"withTaxesAndFees\":37921.01,\"withVAT\":37921.01,\"withVATDeduction\":37921.01,\"withoutTaxesAndFees\":31339.68}]},{\"code\":\"lookFeaturesPrice\",\"prices\":[{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"cataloguePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0},{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"eStorePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0}]},{\"code\":\"featuresPrice\",\"prices\":[{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"cataloguePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0},{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"eStorePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0}]}],\"taxes\":[{\"id\":\"VAT\",\"prices\":[{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"cataloguePrice\",\"rate\":0.21,\"taxes\":[],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":6581.33,\"withTaxesAndFees\":6581.33,\"withVAT\":6581.33,\"withVATDeduction\":6581.33,\"withoutTaxesAndFees\":6581.33},{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"eStorePrice\",\"rate\":0.21,\"taxes\":[],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":6581.33,\"withTaxesAndFees\":6581.33,\"withVAT\":6581.33,\"withVATDeduction\":6581.33,\"withoutTaxesAndFees\":6581.33}]}],\"trims\":[{\"code\":\"1B7\",\"prices\":[{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"cataloguePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0},{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"eStorePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":0,\"withTaxesAndFees\":0,\"withVAT\":0,\"withVATDeduction\":0,\"withoutTaxesAndFees\":0}]}],\"vehicle\":{\"prices\":[{\"deductions\":[],\"discounts\":[],\"fees\":[],\"incentives\":[],\"priceType\":\"cataloguePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"withTaxDeductionsAndFees\":38500.01,\"withTaxesAndFees\":38500.01,\"withVAT\":38500.01,\"withVATDeduction\":38500.01,\"withoutTaxesAndFees\":31818.19},{\"deductions\":[],\"discounts\":[{\"id\":\"c60d449f-4645-4351-815a-6f8b7d5fa89a\",\"withTaxes\":0,\"withoutTaxes\":0},{\"id\":\"31e5488b-6d7e-4ba7-b4cf-6936ceb62b95\",\"withTaxes\":579,\"withoutTaxes\":478.51}],\"fees\":[],\"incentives\":[],\"priceType\":\"eStorePrice\",\"taxes\":[{\"id\":\"VAT\",\"rate\":0.21}],\"totalDiscount\":{\"withTaxesAndFees\":579,\"withoutTaxesAndFees\":478.51},\"withTaxDeductionsAndFees\":37921.01,\"withTaxesAndFees\":37921.01,\"withVAT\":37921.01,\"withVATDeduction\":37921.01,\"withoutTaxesAndFees\":31339.68}]},\"versionId\":\"420.L2E.0.000\"},\"warnings\":[{\"code\":\"W_TRANSLATIONS_NOT_FOUND\",\"message\":\"Unable to load translations\"},{\"code\":\"W_TRANSLATIONS_NOT_FOUND\",\"message\":\"Unable to load translations\"}],\"wltpData\":{\"efficiencyClass\":\"A\",\"values\":[{\"id\":\"WLTP_ELECCONS_COMBINED\",\"unit\":\"kWh/100km\",\"value\":15.5},{\"id\":\"WLTP_FUELCONS_MEDIUM\",\"unit\":\"l/100km\",\"value\":0},{\"id\":\"WLTP_CO2_COMBINED\",\"unit\":\"g/km\",\"value\":0},{\"id\":\"WLTP_ELECRANGE_EAER_COMBINED\",\"unit\":\"km\",\"value\":400},{\"id\":\"WLTP_FUELCONS_HIGH\",\"unit\":\"l/100km\",\"value\":0},{\"id\":\"WLTP_FUELCONS_WEIGHTED\",\"unit\":\"l/100km\",\"value\":0},{\"id\":\"NEDC_FUELCONS_COMBINED\",\"unit\":\"l/100km\",\"value\":0},{\"id\":\"WLTP_ELECRANGE_PER_CITY\",\"unit\":\"km\",\"value\":600},{\"id\":\"WLTP_ELECCONS_ECAC\",\"unit\":\"kWh/100km\",\"value\":15.5},{\"id\":\"WLTP_FUELCONS_LOW\",\"unit\":\"l/100km\",\"value\":0},{\"id\":\"WLTP_FUELCONS_COMBINED\",\"unit\":\"l/100km\",\"value\":0},{\"id\":\"NEDC_FUELCONS_WEIGHTED\",\"unit\":\"l/100km\",\"value\":0},{\"id\":\"NEDC_CO2_WEIGHTED\",\"unit\":\"g/km\",\"value\":0},{\"id\":\"WLTP_ELECRANGE_PER_COMBINED\",\"unit\":\"km\",\"value\":400},{\"id\":\"WLTP_FUELCONS_EXTRAHIGH\",\"unit\":\"l/100km\",\"value\":0},{\"id\":\"WLTP_ELECRANGE_EAER_CITY\",\"unit\":\"km\",\"value\":600}]},\"accountingCodes\":{\"tcoCcb\":[{\"code\":\"1#00000\",\"label\":\"PRIVATE - RECYCLAGE#00000\"}]},\"fullConfiguration\":{\"optionals\":[\"02S\",\"02V\",\"050\",\"06S\",\"07B\",\"07L\",\"0MJ\",\"0T6\",\"0T7\",\"0T8\",\"0T9\",\"132\",\"140\",\"17C\",\"182\",\"1M0\",\"2TJ\",\"347\",\"3B1\",\"3F5\",\"3G6\",\"3IG\",\"3S2\",\"416\",\"42A\",\"42M\",\"5IX\",\"5KY\",\"5ZK\",\"6DF\",\"7KQ\",\"80G\",\"9S8\",\"BNH\",\"BNW\",\"CFN\",\"CSM\",\"CVV\",\"GNA\",\"GT8\",\"GX4\",\"JAL\",\"JTM\",\"JWA\",\"LPX\",\"RCD\",\"RDP\",\"RTK\",\"RTR\",\"W2C\",\"XC4\",\"XG8\"],\"selectedOptionals\":[],\"standardOptionals\":[\"0MJ\",\"3S2\",\"6DF\",\"7KQ\",\"RTK\"],\"structuralOptionals\":[\"02S\",\"02V\",\"050\",\"06S\",\"07B\",\"07L\",\"0T6\",\"0T7\",\"0T8\",\"0T9\",\"132\",\"140\",\"17C\",\"182\",\"1M0\",\"2TJ\",\"347\",\"3B1\",\"3F5\",\"3G6\",\"3IG\",\"416\",\"42A\",\"42M\",\"5IX\",\"5KY\",\"5ZK\",\"80G\",\"9S8\",\"BNH\",\"BNW\",\"CFN\",\"CSM\",\"CVV\",\"GNA\",\"GT8\",\"GX4\",\"JAL\",\"JTM\",\"JWA\",\"LPX\",\"RCD\",\"RDP\",\"RTR\",\"W2C\",\"XC4\",\"XG8\"],\"techValues\":[\"A/T(NA)\",\"ALMC(000)\",\"AM(00)\",\"BTC(M50)\",\"CAM(NA)\",\"CC(NA)\",\"CMB(EL)\",\"ECO(ZEV)\",\"EKW(115)\",\"ELT(BEV)\",\"ENG(E013)\",\"G(SX)\",\"KW(NA)\",\"L(L1)\",\"LC(L50)\",\"MARCA(57)\",\"MODSER(4200)\",\"NG(NA)\",\"NM(NO)\",\"PC(NA)\",\"SS(NO)\",\"TC(2V)\",\"TRM(E001)\",\"TRS(M1)\",\"TT(FWD)\",\"VERS(L2E)\",\"VLE(NA)\"]}}",
                "profilingCookies": [
                    {
                        "id": "GA1.1.58442974.1695116560"
                    }
                ],
                "sourceName": "OMNI",
                "userId": "1695116561356024a4e9a-8f39-c7f3-5bbe-4d06e3126ac1",
                "userProfile": {
                    "culture": "fr-BE",
                    "customerCookieId": "1695116561356024a4e9a-8f39-c7f3-5bbe-4d06e3126ac1"
                },
                "userType": "CUSTOMER"
            },
            "optionals": [
                {
                    "code": "U-06S",
                    "desc": "Contrôle de température EV",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "U-07B",
                    "desc": "Point de recharge intelligent",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "U-07L",
                    "desc": "Recharge intelligente",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "U-0T6",
                    "desc": "Chargeur rapide EV",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "U-0T7",
                    "desc": "Chargeur très rapide EV",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "U-0T9",
                    "desc": "Batterie EV recyclable",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "U-17C",
                    "desc": "Câble de chargement Mode 3 (recharge au point de charge public ou via installation à domicile)",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "U-3B1",
                    "desc": "Boîtier de Connectivité BSRF",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "U-3S2",
                    "desc": "Chargeur de bord 11kW",
                    "isChildOfPack": false,
                    "isMandatory": true,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "C-132",
                    "desc": "Accoudoir coulissant avec bac intérieur",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "C-140",
                    "desc": "Climatisation automatique",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "C-BNW",
                    "desc": "Sélecteur de mode de conduite 'Selec-terrain'",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "C-GT8",
                    "desc": "Rétroviseurs électriques",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "C-GX4",
                    "desc": "Démarrage sans clé",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "C-RCD",
                    "desc": "4 speakers",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "C-XC4",
                    "desc": "Frein à main électronique avec fonction 'Auto-hold'",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "C-XG8",
                    "desc": "Sélecteur de mode de conduite EV",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "7-2TJ",
                    "desc": "Feux arrière halogènes",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "7-5ZK",
                    "desc": "Volant en uréthane",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "7-7KQ",
                    "desc": "Label I'am Jeep",
                    "isChildOfPack": false,
                    "isMandatory": true,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "7-GNA",
                    "desc": "Rétroviseur intérieur manuel",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "7-JAL",
                    "desc": "Ecran ordinateur de bord TFT 7''",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "S-347",
                    "desc": "Capteur de pluie",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "S-416",
                    "desc": "Régulateur de vitesse",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "S-9S8",
                    "desc": "Freinage d'urgence pour piétons et cyclistes",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "S-BNH",
                    "desc": "Hill Descent Control (HDC)",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "L-5IX",
                    "desc": "Poignées de portes noires",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "L-80G",
                    "desc": "Coques de rétroviseurs noir mat",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "L-LPX",
                    "desc": "Phares à réflecteur LED",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "T-RDP",
                    "desc": "Radio avec écran d'Infotainment Uconnect™ de 10,25\" et système Apple CarPlay/Android Auto sans fil",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "T-RTK",
                    "desc": "Uconnect Services",
                    "isChildOfPack": false,
                    "isMandatory": true,
                    "isSelected": true,
                    "isStandardOption": true
                },
                {
                    "code": "T-RTR",
                    "desc": "ECALL",
                    "isChildOfPack": false,
                    "isMandatory": false,
                    "isSelected": true,
                    "isStandardOption": true
                }
            ],
            "packs": [],
            "pdfDataCarSelector": {
                "electricCarRangeFullBattery": "400 km",
                "emissionStandard": "",
                "optionals": [
                    {
                        "code": "U-06S",
                        "desc": "Contrôle de température EV",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "U-07B",
                        "desc": "Point de recharge intelligent",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "U-07L",
                        "desc": "Recharge intelligente",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "U-0T6",
                        "desc": "Chargeur rapide EV",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "U-0T7",
                        "desc": "Chargeur très rapide EV",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "U-0T9",
                        "desc": "Batterie EV recyclable",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "U-17C",
                        "desc": "Câble de chargement Mode 3 (recharge au point de charge public ou via installation à domicile)",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "U-3B1",
                        "desc": "Boîtier de Connectivité BSRF",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "U-3S2",
                        "desc": "Chargeur de bord 11kW",
                        "isChildOfPack": false,
                        "isMandatory": true,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "C-132",
                        "desc": "Accoudoir coulissant avec bac intérieur",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "C-140",
                        "desc": "Climatisation automatique",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "C-BNW",
                        "desc": "Sélecteur de mode de conduite 'Selec-terrain'",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "C-GT8",
                        "desc": "Rétroviseurs électriques",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "C-GX4",
                        "desc": "Démarrage sans clé",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "C-RCD",
                        "desc": "4 speakers",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "C-XC4",
                        "desc": "Frein à main électronique avec fonction 'Auto-hold'",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "C-XG8",
                        "desc": "Sélecteur de mode de conduite EV",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "7-2TJ",
                        "desc": "Feux arrière halogènes",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "7-5ZK",
                        "desc": "Volant en uréthane",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "7-7KQ",
                        "desc": "Label I'am Jeep",
                        "isChildOfPack": false,
                        "isMandatory": true,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "7-GNA",
                        "desc": "Rétroviseur intérieur manuel",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "7-JAL",
                        "desc": "Ecran ordinateur de bord TFT 7''",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "S-347",
                        "desc": "Capteur de pluie",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "S-416",
                        "desc": "Régulateur de vitesse",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "S-9S8",
                        "desc": "Freinage d'urgence pour piétons et cyclistes",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "S-BNH",
                        "desc": "Hill Descent Control (HDC)",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "L-5IX",
                        "desc": "Poignées de portes noires",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "L-80G",
                        "desc": "Coques de rétroviseurs noir mat",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "L-LPX",
                        "desc": "Phares à réflecteur LED",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "T-RDP",
                        "desc": "Radio avec écran d'Infotainment Uconnect™ de 10,25\" et système Apple CarPlay/Android Auto sans fil",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "T-RTK",
                        "desc": "Uconnect Services",
                        "isChildOfPack": false,
                        "isMandatory": true,
                        "isSelected": true,
                        "isStandardOption": true
                    },
                    {
                        "code": "T-RTR",
                        "desc": "ECALL",
                        "isChildOfPack": false,
                        "isMandatory": false,
                        "isSelected": true,
                        "isStandardOption": true
                    }
                ]
            },
            "vehicleRegistration": {
                "city": "string",
                "country": "string",
                "province": "string",
                "street": "string",
                "zipCode": "string",
                "zoneId": "string"
            },
            "discounts": {
                "discountsTotals": {
                    "withTaxesAndFees": 0,
                    "withoutTaxesAndFees": 0
                }
            },
            "energyLabels": {
                "urlImage": ""
            },
            "fees": {
                "amountWithTaxes": 0,
                "amountWithoutTaxes": 0,
                "description": "string",
                "id": "string"
            },
            "finalPriceWithScrapping": {
                "withTaxesAndFees": 0,
                "withTaxesDeductionsAndFees": 0,
                "withVAT": 0,
                "withVATDeduction": 0,
                "withoutTaxesAndFees": 0
            },
            "finalPriceWithTradeIn": {
                "withTaxesAndFees": 0,
                "withTaxesDeductionsAndFees": 0,
                "withVAT": 0,
                "withVATDeduction": 0,
                "withoutTaxesAndFees": 0
            },
            "finalPriceWoTradeIn": {
                "withTaxesAndFees": 0,
                "withTaxesDeductionsAndFees": 0,
                "withVAT": 0,
                "withVATDeduction": 0,
                "withoutTaxesAndFees": 0
            },
            "financialProfile": {
                "id": "P",
                "type": "Private"
            },
            "incentives": {
                "description": "string",
                "incentiveWithTaxes": 0,
                "incentiveWithoutTaxes": 0,
                "ode": "string"
            },
            "payment": {
                "attempts": 0,
                "deposit": {
                    "amount": null,
                    "currency": "",
                    "isEditedByDealer": true
                },
                "errorCode": "",
                "lastAttempt": "",
                "method": "",
                "status": "",
                "termsAndConditions": "",
                "transactionId": ""
            },
            "taxes": {
                "amount": 0,
                "description": "string",
                "id": "string",
                "rate": 0
            }
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/wishlist/v1/save'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

    
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Update a Configuration in wishlist

     * def RequestBody = 
      """
      {
            "configurationDetails": {
                "configuredBy": "1695116561356024a4e9a-8f39-c7f3-5bbe-4d06e3126ac1",
                "deletionDate": "",
                "guestUserSessionId": "1695116561356024a4e9a-8f39-c7f3-5bbe-4d06e3126ac1",
                "savedFor": "1695116561356024a4e9a-8f39-c7f3-5bbe-4d06e3126ac1",
                "userType": "unlogged",
                "vehicleConfiguration": {
                    "brand": {
                        "code": "57",
                        "desc": "jeep"
                    },
                    "market": {
                        "code": "3104",
                        "desc": "BE"
                    } 
                }
        },
        "financialProduct": {
            "productKey": "string",
            "creationDate": "string",
            "idFinanceFile": "string",
            "idQuotation": "string",
            "callbackURL": "string",
            "mofId": "string",
            "financialProductCategory": "string",
            "financialType": "string",
            "caApprovalStatus": "string",
            "commercialCode": "string",
            "financialCode": "string",
            "financialProductTitle": "string",
            "description": "string",
            "deposit": {
            "amount": 0,
            "currency": "string"
            },
            "monthlyPayment": {
            "amountInclTax": 0,
            "amountExclTax": 0,
            "currency": "string"
            },
            "duration": "string",
            "annualMileage": "string",
            "isBalloon": true,
            "financialSubType": "string",
            "financialValidityDate": "string",
            "isOffline": true,
            "isFromCS": true,
            "financedAmount": 0,
            "firstRental": 0,
            "financeSimulation": {
            "parameters": {
                "duration": 0,
                "deposit": 0,
                "depositAmountKind": "string",
                "depositAmountNature": "string",
                "annualMileage": 0,
                "productKey": "string",
                "services": [
                {
                    "serviceCode": "string",
                    "packageCode": "string",
                    "included": true
                }
                ]
            }
            },
            "primaryText": [
            {
                "text": "string"
            }
            ]
        },
        "customer": {
            "magentoUserId": 0,
            "crmUserId": 0,
            "customerFirstId": "string",
            "gigyaUserId": 0,
            "gigyaId": "string",
            "userType": "string",
            "salutation": "string",
            "firstName": "string",
            "lastName": "string",
            "email": "string",
            "language": "string",
            "profession": "string",
            "fiscalID": "string",
            "vatNumber": "string",
            "commercialName": "string",
            "dateOfBirth": "string",
            "cityOfBirth": "string",
            "industry": "string",
            "dateOfCompanyCreation": "string",
            "mobile": "string",
            "phone": "string",
            "nationalIdType": "string",
            "citizenship": "string",
            "hasCustomerConfirmed": true,
            "nationalIdNumber": "string",
            "provinceOfBirth": "string",
            "title": "string",
            "postalData": {
            "street": "string",
            "zipCode": "string",
            "zoneId": "string",
            "city": "string",
            "country": "string",
            "province": "string",
            "registrationPostalCode": "string",
            "geoPoint": "string",
            "addressLine2": "string"
            },
            "billingData": {
            "street": "string",
            "zipCode": "string",
            "zoneId": "string",
            "city": "string",
            "country": "string",
            "province": "string",
            "registrationPostalCode": "string",
            "geoPoint": "string",
            "addressLine2": "string"
            },
            "b2bContactData": {
            "gigyaUserId": "string",
            "crmUserId": "string",
            "userType": "string",
            "role": "string",
            "firstName": "string",
            "lastName": "string",
            "email": "string",
            "language": "string",
            "profession": "string",
            "mobile": "string",
            "title": "string",
            "phone": "string",
            "companyNumber": "string",
            "companyEmail": "string"
            },
            "b2bRepresentativeData": {
            "fiscalId": "string",
            "firstName": "string",
            "lastName": "string"
            }
        },
        "npeRequest": "string",
        "npeResponse": "string",
        "accessories": [
            {
            "code": "string",
            "desc": "string",
            "typology": "string",
            "category": "string",
            "price": {
                "price": 0,
                "priceNoVat": 0
            },
            "thumbnail": "string"
            }
        ],
        "warrantyExtensionServices": {
            "planCode": "string",
            "familyCode": "string",
            "price": {
            "price": 0,
            "priceNoVat": 0
            },
            "description": "string"
        },
        "maintenanceServices": {
            "planCode": "string",
            "familyCode": "string",
            "price": {
            "price": 0,
            "priceNoVat": 0
            },
            "description": "string"
        }
    }     
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/wishlist/v1/update-accessories'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

    
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method patch

      Then status 500


Scenario: Retrieve a configuration  

      * def RequestBody = 
      """
        {  
             "configurationCode": "NHBL1kux",
            "market": "3104",
            "brandList":["83"]
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/wishlist/v1'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 500

Scenario: Retrieve number of vehicles in the Wishlist 

      
      Given url omniUrl
      And path '/wishlist/v1/counts/test-guest-omni-10'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = '83'
      And header marketCode = '1000'
      And header languageCode = '5'
      And header modelCode = '6220'
      And header userType = 'unlogged'
      And header x-trace-id = 'karate-test-12345'
   
      When method Get

      Then status 200

Scenario: Update deletion date in wishlist  

      * def RequestBody = 
      """
            {
            "configurationCode": "63c93feac4d7dd4f2e4c4909",
            "deletionDate": "17/01/2023",
            "marketCode": "1000",
            "brandCode": "83"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/wishlist/v1/deletion-date'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method put

      Then status 200

Scenario: count by emails  

      * def RequestBody = 
      """
            {
            "emails": [
                "test@example.com"
            ],
            "brands": "83"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/wishlist/v1/count-by-emails'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: convert all wishlist of a unlogged customer to a logged customer

      * def RequestBody = 
      """
            {
            "gigyaUserId": "string",
            "sessionId": "string",
            "email": "string"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/wishlist/v1/convert-guest'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Check stock vehicle added to user

      * def RequestBody = 
      """
        {
        "userId": "1686067292093527996dc-972f-55c1-f567-d3976eb988cc",
        "uuids": "55c5f8a6cf5a129effa9da8009cec895ea0c0cd3 ,20d0cc566be8999a52e7f65b746564c441d2f3c7",
        "customerType": "B2B"
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/wishlist/v1/stock/check'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Generic error logging endpoint for Splunk monitoring

      * def RequestBody = 
      """
        {
        "errorType": "SCCF_ERROR",
        "errorMessage": "Configuration not available",
        "payload": {
            "vehicleModel": "PANDA",
            "trimCode": "ABC123"
        }
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/wishlist/v1/analytics/log-error'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header brandCode = '83'
      And header marketCode = '1000'
      And header languageCode = '5'
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Retrieve all Wishlist for a specific user

      * def RequestBody = 
      """
            {
                "userId": "1678202924198a1fbfasadff1-7e42-fe81-4b71-60993aed69da",
                "userType": "logged",
                "sort": "desc",
                "brand": "83",
                "limited": true
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/wishlist/v1/wishlists'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header marketCode = '1000'
      And header languageCode = '5'
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Delete a configuration

      Given url omniUrl
      And path '/wishlist/v1/sstXTbpv'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header brandCode = '83'
      And header marketCode = '1000'
      And header x-trace-id = 'karate-test-12345'

      When method delete

      Then status 200

Scenario: Retrive the pdf for a configuration

      * def RequestBody = 
      """
        {
            "pdfDataCarSelector": {},
            "pdfDataBasket": {},
            "pdfDataCheckout": {},
            "bmsTeam": true,
            "profilingCookies": [
                {
                "id": "string"
                }
            ],
            "configurationDetails": {
                "userType": "logged",
                "configuredBy": "432",
                "preconfiguredOriginCode": "string",
                "savedFor": "omni_test1",
                "zoneId": "Europe/Rome",
                "guestUserSessionId": "string",
                "vehicleConfiguration": {
                "vehicleCode": "1PP5A5TMK1B0A0B0",
                "vehicleType": "string",
                "originalUseCodeUrl": "string",
                "userJourney": "string",
                "isFromStock": "string",
                "isWcwRequest": true,
                "stillManufacturable": true,
                "zipCodeRegistration": "string",
                "isStockSegregation": true,
                "vinSeg": "string",
                "listPrice": 0,
                "netPrice": 0,
                "monthlyPayment": 0,
                "sourceCode": "string",
                "couponCode": "string",
                "isVisible": true,
                "estimatedDeliveryDate": "string",
                "brand": {
                    "code": "string",
                    "desc": "string"
                },
                "model": {
                    "code": "string",
                    "desc": "string"
                },
                "market": {
                    "code": "string",
                    "desc": "string"
                },
                "language": {
                    "code": "string",
                    "desc": "string"
                },
                "trimCode": "010",
                "trimName": "string",
                "trimGroupCode": "string",
                "engineCode": "EXC491",
                "engineName": "string",
                "engineGroupCode": "string",
                "fuelType": "string",
                "drive": "string",
                "color": "string",
                "wheels": "string",
                "interiors": "string",
                "budgetFamily": "string",
                "marketEquipment": "string",
                "completeConfigurationList": [
                    "string"
                ],
                "disclaimer": {
                    "text": "string",
                    "style": {
                    "displaySize": 0
                    }
                },
                "useCod": "VU",
                "grBodyStyle": "string",
                "gearboxType": "string",
                "vehicleImage": "string",
                "numberOfGears": "string",
                "colorName": "string",
                "interiorName": "string",
                "cylinderCapacity": "string",
                "horsePower": "string",
                "emissionStandard": "string",
                "privacyPolicyChecks": true,
                "optionalsForNPE": [
                    "string"
                ],
                "completeConfigurationListSccf": [
                    "string"
                ],
                "source": "string",
                "isPreconfiguredOffer": true,
                "upSellOptionsList": [
                    "string"
                ],
                "preConfiguredMandatoryOpt": [
                    "string"
                ],
                "fuelTypeDesc": "string",
                "vehicleImageInterior1": "string",
                "vehicleImageInterior2": "string",
                "wheelName": "string",
                "calipersName": "string",
                "rooftopName": "string",
                "bumpersName": "string",
                "transmission": "string",
                "isQuadricycle": true,
                "lcvFiltersId": 0,
                "transmissionCode": "string",
                "gearCode": "string",
                "colorNfi": "string",
                "interiorNfi": "string",
                "co2wltp": "string",
                "showroomVin": "string",
                "bodyType": "string",
                "grBodyStyleDesc": "string",
                "bodyStyle": "string",
                "bodyStyleDesc": "string",
                "bodyTypeDesc": "string",
                "vehicleFullName": "string"
                },
                "deletionDate": "1706689462000",
                "isManufacturable": true
            },
            "delivery": {
                "estimatedDeliveryDate": "string",
                "maxRangeDate": "string",
                "minRangeDate": "string",
                "wishedDeliveryDate": "string",
                "locationMilestoneRange": "string",
                "reservationId": "string",
                "reservationStatus": "string",
                "omsOrderId": "string",
                "orderedVin": "string",
                "reservationExpiration": "string",
                "deliveryAnticipationAccepted": true,
                "deliveryAtHome": true,
                "shippingData": {
                "completeStreet": "string",
                "zipCode": "string",
                "city": "string",
                "country": "string",
                "province": "string"
                },
                "deliveryAtHomeCost": {
                "amount": "string",
                "currency": "string"
                }
            },
            "dealerAdditional": [
                {
                "code": "string",
                "title": "string",
                "accessoriesType": "string",
                "description": "string",
                "netFinalPrice": {
                    "amount": 0,
                    "currency": "string"
                },
                "withTaxFinalPrice": {
                    "amount": 0,
                    "currency": "string"
                }
                }
            ],
            "financialProduct": {
                "productKey": "string",
                "creationDate": "string",
                "idFinanceFile": "string",
                "idQuotation": "string",
                "callbackURL": "string",
                "mofId": "string",
                "financialProductCategory": "string",
                "financialType": "string",
                "caApprovalStatus": "string",
                "commercialCode": "string",
                "financialCode": "string",
                "financialProductTitle": "string",
                "description": "string",
                "deposit": {
                "amount": 0,
                "currency": "string"
                },
                "monthlyPayment": {
                "amountInclTax": 0,
                "amountExclTax": 0,
                "currency": "string"
                },
                "duration": "string",
                "annualMileage": "string",
                "isBalloon": true,
                "financialSubType": "string",
                "financialValidityDate": "string",
                "isOffline": true,
                "isFromCS": true,
                "financedAmount": 0,
                "firstRental": 0,
                "financeSimulation": {
                "parameters": {
                    "duration": 0,
                    "deposit": 0,
                    "depositAmountKind": "string",
                    "depositAmountNature": "string",
                    "annualMileage": 0,
                    "productKey": "string",
                    "services": [
                    {
                        "serviceCode": "string",
                        "packageCode": "string",
                        "included": true
                    }
                    ]
                }
                },
                "primaryText": [
                {
                    "text": "string"
                }
                ]
            },
            "vehicleRegistration": {
                "street": "string",
                "zipCode": "string",
                "zoneId": "string",
                "city": "string",
                "country": "string",
                "province": "string",
                "registrationPostalCode": "string",
                "geoPoint": "string",
                "addressLine2": "string"
            },
            "customer": {
                "magentoUserId": 0,
                "crmUserId": 0,
                "customerFirstId": "string",
                "gigyaUserId": 0,
                "gigyaId": "string",
                "userType": "string",
                "salutation": "string",
                "firstName": "string",
                "lastName": "string",
                "email": "string",
                "language": "string",
                "profession": "string",
                "fiscalID": "string",
                "vatNumber": "string",
                "commercialName": "string",
                "dateOfBirth": "string",
                "cityOfBirth": "string",
                "industry": "string",
                "dateOfCompanyCreation": "string",
                "mobile": "string",
                "phone": "string",
                "nationalIdType": "string",
                "citizenship": "string",
                "hasCustomerConfirmed": true,
                "nationalIdNumber": "string",
                "provinceOfBirth": "string",
                "title": "string",
                "postalData": {
                "street": "string",
                "zipCode": "string",
                "zoneId": "string",
                "city": "string",
                "country": "string",
                "province": "string",
                "registrationPostalCode": "string",
                "geoPoint": "string",
                "addressLine2": "string"
                },
                "billingData": {
                "street": "string",
                "zipCode": "string",
                "zoneId": "string",
                "city": "string",
                "country": "string",
                "province": "string",
                "registrationPostalCode": "string",
                "geoPoint": "string",
                "addressLine2": "string"
                },
                "b2bContactData": {
                "gigyaUserId": "string",
                "crmUserId": "string",
                "userType": "string",
                "role": "string",
                "firstName": "string",
                "lastName": "string",
                "email": "string",
                "language": "string",
                "profession": "string",
                "mobile": "string",
                "title": "string",
                "phone": "string",
                "companyNumber": "string",
                "companyEmail": "string"
                },
                "b2bRepresentativeData": {
                "fiscalId": "string",
                "firstName": "string",
                "lastName": "string"
                }
            },
            "mopCreate": {
                "brand": {
                "code": "string",
                "desc": "string"
                },
                "market": {
                "code": "string",
                "desc": "string"
                },
                "formerUserId": "string",
                "mopType": "string",
                "sourceName": "string",
                "currencyCode": "EUR",
                "userProfile": {
                "birthDate": "2007-12-10",
                "birthPlace": "string",
                "creationDate": "string",
                "customerCookieId": "string",
                "customerId": "string",
                "crmId": "string",
                "finCoId": "string",
                "email": "string",
                "firstname": "string",
                "lastname": "string",
                "customerObject": "string",
                "title": "string",
                "companyStreetName": "string",
                "companyLocality": "string",
                "companyPostalCode": "string",
                "companyTown": "string",
                "companyCountry": "string",
                "companyCounty": "string",
                "companyContact": {
                    "CRMId": "string",
                    "civilityLabel": "string",
                    "title": "string",
                    "firstname": "string",
                    "lastname": "string",
                    "professionalMobilePhone": "string",
                    "professionalMobilePhonePrefix": "string",
                    "professionalEmail": "string",
                    "streetName": "string",
                    "postalCode": "string",
                    "town": "string",
                    "state": "string",
                    "country": "string"
                },
                "country": "string",
                "civilityLabel": "string",
                "registrationHouseName": "string",
                "registrationHouseNumber": "string",
                "registrationHouseNumberExtension": "string",
                "registrationStreetType": "string",
                "registrationStreetName": "string",
                "registrationAddressComplement": "string",
                "registrationLocality": "string",
                "registrationPostalCode": "string",
                "registrationTown": "string",
                "registrationCounty": "string",
                "flat": "string",
                "houseName": "string",
                "houseNumber": "string",
                "houseNumberExtension": "string",
                "streetType": "string",
                "streetName": "string",
                "addressComplement": "string",
                "locality": "string",
                "postalCode": "string",
                "town": "string",
                "county": "string",
                "mobilePhonePrefix": "string",
                "mobilePhone": "string",
                "homePhone": "string",
                "homePhonePrefix": "string",
                "accessToken": "string",
                "culture": "en-GB",
                "civilityCode": "string",
                "companyName": "string",
                "siretNumber": "string",
                "accountingCompanyCode": "string",
                "identityNumber": "string",
                "remoteIp": "string",
                "TVANumber": "string",
                "paymentTerms": {
                    "leadtimeTypeCode": "string",
                    "leadtimeType": "string",
                    "leadtimeCode": "string",
                    "leadtime": 0
                }
                },
                "car": {
                "administrativePower": "string",
                "isCompleted": true,
                "isAddedToBasket": true,
                "overalMileage": 0,
                "isValid": true,
                "vehicleType": "string",
                "isStock": true,
                "versionId": "string",
                "versionLabel": "string",
                "mvs": "string",
                "derivedModelId": "string",
                "derivedModelLabel": "string",
                "versionBasicPrice": 0,
                "versionBasicTaxRatePercentage": 0,
                "versionBasicTaxAmount": 0,
                "versionBasicPriceWithOptions": 0,
                "versionBasicPriceWithOptionsWithoutTax": 0,
                "versionBasicPriceWithOptionsTaxRatePercentage": 0,
                "versionBasicPriceWithOptionsTaxAmount": 0,
                "versionBasicWithOptionsWithoutTax": 0,
                "versionBasicPriceWithoutTax": 0,
                "versionBasicPriceWithOptionsAutomotiveTaxRatePercentage": 0,
                "versionBasicPriceWithOptionsAutomotiveTaxAmount": 0,
                "versionNetTaxRatePercentage": 0,
                "versionNetPrice": 0,
                "versionNetPriceWithoutTax": 0,
                "versionNetTaxAmount": 0,
                "versionNetPriceWithOptions": 0,
                "versionNetPriceWithOptionsWithoutTax": 0,
                "versionNetPriceWithOptionsTaxRatePercentage": 0,
                "versionNetPriceWithOptionsTaxAmount": 0,
                "versionNetPriceWithOptionsAutomotiveTaxRatePercentage": 0,
                "versionNetPriceWithOptionsAutomotiveTaxAmount": 0,
                "versionLocalNetPrice": 0,
                "versionLocalNetPriceWithoutTax": 0,
                "versionLocalNetPriceAutomotiveTaxRatePercentage": 0,
                "versionLocalNetPriceAutomotiveTaxAmount": 0,
                "versionLocalNetPriceWithOptions": 0,
                "versionLocalNetPriceWithOptionsWithoutTax": 0,
                "versionLocalNetPriceWithOptionsTaxRatePercentage": 0,
                "versionLocalNetPriceWithOptionsTaxAmount": 0,
                "versionLocalNetPriceWithOptionsAutomotiveTaxRatePercentage": 0,
                "versionLocalNetPriceWithOptionsAutomotiveTaxAmount": 0,
                "isWithFinance": true,
                "addedToBasketDate": "2026-04-07T15:26:31.401Z",
                "versionMonthlyPrice": 0,
                "cashPrice": 0,
                "cashPriceWithoutTax": 0,
                "cashPriceTaxRatePercentage": 0,
                "cashPriceTaxAmount": 0,
                "availabilityDate": "2026-04-07T15:26:31.401Z",
                "genericCarConfig": "string",
                "kindCode": "string",
                "kindLabel": "string",
                "fuelCode": "string",
                "fuelLabel": "string",
                "maximumPowerHP": "string",
                "internalColor": {
                    "code": "string",
                    "label": "string",
                    "isPack": true,
                    "basicPrice": 0,
                    "netPrice": 0,
                    "basicPriceWithoutTax": 0,
                    "localNetPrice": 0,
                    "isLocalPack": true,
                    "packEquipmentsIncluded": [
                    {
                        "code": "string",
                        "label": "string",
                        "shortCode": "string"
                    }
                    ],
                    "linkedOptCode": "string"
                },
                "externalColor": {
                    "code": "string",
                    "label": "string",
                    "isPack": true,
                    "basicPrice": 0,
                    "netPrice": 0,
                    "basicPriceWithoutTax": 0,
                    "localNetPrice": 0,
                    "isLocalPack": true,
                    "packEquipmentsIncluded": [
                    {
                        "code": "string",
                        "label": "string",
                        "shortCode": "string"
                    }
                    ],
                    "linkedOptCode": "string"
                },
                "options": [
                    {
                    "code": "string",
                    "label": "string",
                    "isPack": true,
                    "basicPrice": 0,
                    "netPrice": 0,
                    "basicPriceWithoutTax": 0,
                    "localNetPrice": 0,
                    "isLocalPack": true,
                    "packEquipmentsIncluded": [
                        {
                        "code": "string",
                        "label": "string",
                        "shortCode": "string"
                        }
                    ],
                    "linkedOptCode": "string"
                    }
                ],
                "NEDC": [
                    {
                    "key": "string",
                    "value": "string",
                    "unit": "string",
                    "cycle": "string",
                    "characteristicId": "string",
                    "characteristicLabel": "string"
                    }
                ],
                "WLTP": [
                    {
                    "key": "string",
                    "value": "string",
                    "unit": "string",
                    "cycle": "string",
                    "characteristicId": "string",
                    "characteristicLabel": "string"
                    }
                ],
                "promotions": [
                    {
                    "code": "string",
                    "label": "string",
                    "netAmount": 0
                    }
                ],
                "costs": [
                    {
                    "isWithFinance": true,
                    "code": "string",
                    "label": "string",
                    "netAmount": 0,
                    "withoutTaxAmount": 0,
                    "taxRatePercentage": 0,
                    "taxAmount": 0,
                    "optional": "string",
                    "notice": "string"
                    }
                ],
                "urls": [
                    {
                    "link": "string",
                    "type": "string"
                    }
                ],
                "makeLabel": "string",
                "makeCode": "string",
                "trimLevelLabel": "string",
                "trimLevelCode": "string",
                "gearTypeCode": "string",
                "isWithoutTax": true,
                "country": "string",
                "engineType": "string",
                "market": "string",
                "oldCashPrice": 0,
                "oldCashPriceWithoutTax": 0,
                "extraTaxes": [
                    {
                    "isWithFinance": true,
                    "code": "string",
                    "label": "string",
                    "netAmount": 0,
                    "withoutTaxAmount": 0,
                    "taxRatePercentage": 0,
                    "taxAmount": 0,
                    "optional": "string",
                    "notice": "string"
                    }
                ],
                "extraTaxesIncludedInPrice": [
                    {
                    "isWithFinance": true,
                    "code": "string",
                    "label": "string",
                    "netAmount": 0,
                    "withoutTaxAmount": 0,
                    "taxRatePercentage": 0,
                    "taxAmount": 0,
                    "optional": "string",
                    "notice": "string"
                    }
                ],
                "minAvailabilityDate": "2026-04-07T15:26:31.401Z",
                "costsIncludedInPrice": [
                    {
                    "isWithFinance": true,
                    "code": "string",
                    "label": "string",
                    "netAmount": 0,
                    "withoutTaxAmount": 0,
                    "taxRatePercentage": 0,
                    "taxAmount": 0,
                    "optional": "string",
                    "notice": "string"
                    }
                ],
                "governmentContributions": [
                    {
                    "code": "string",
                    "label": "string",
                    "netAmount": 0
                    }
                ],
                "maximumPowerKW": "string",
                "isWithScrappage": true,
                "availabilityDuration": 0,
                "CAFNum": "string",
                "campaign": {
                    "id": "string",
                    "label": "string",
                    "benefits": [
                    {
                        "description": "string",
                        "notice": "string"
                    }
                    ]
                },
                "CARNum": "string",
                "CARToDate": "2026-04-07T15:26:31.401Z",
                "cashPriceDate": "2026-04-07T15:26:31.401Z",
                "cashPriceEndDate": "2026-04-07T15:26:31.401Z",
                "correspondingLocalNetPriceWithOptionsInFinance": 0,
                "correspondingLocalNetPriceWithOptionsInFinanceNotice": "string",
                "correspondingLocalNetPriceWithOptionsWithoutTaxInFinance": 0,
                "correspondingNetPriceWithOptionsInFinance": 0,
                "correspondingNetPriceWithOptionsInFinanceNotice": "string",
                "correspondingNetPriceWithOptionsWithoutTaxInFinance": 0,
                "doorId": "string",
                "doorLabel": "string",
                "ecologicBonus": {
                    "isWithFinance": true,
                    "code": "string",
                    "label": "string",
                    "netAmount": 0,
                    "withoutTaxAmount": 0,
                    "taxRatePercentage": 0,
                    "taxAmount": 0,
                    "optional": "string",
                    "notice": "string"
                },
                "firstRegistrationDate": "2026-04-07T15:26:31.401Z",
                "globalPromotion": {
                    "code": "string",
                    "label": "string",
                    "netAmount": 0
                },
                "hasPIMC": true,
                "idVehicle": "string",
                "isFutureTariff": true,
                "isWithLeasing": true,
                "isWithRecoverableTax": true,
                "kerbWeight": "string",
                "leadTimeDecomposition": {
                    "manufacturingExpectedYear": 0,
                    "manufacturingExpectedWeek": 0,
                    "manufacturingMinExpectedYear": 0,
                    "manufacturingMinExpectedWeek": 0,
                    "manufacturingOptionalEquipementLeadtime": 0,
                    "transportToNSCDuration": 0,
                    "transportToDealerAndPreparationDuration": 0,
                    "accessoriesInstallationLeadtime": 0,
                    "deliveryLeadtime": 0
                },
                "maxLadenWeight": "string",
                "numberOfSeats": "string",
                "offerValidityEndDate": "2026-04-07T15:26:31.401Z",
                "oldAvailabilityDate": "2026-04-07T15:26:31.401Z",
                "origin": "string",
                "overalMileageCertified": "string",
                "overalMileageCertifiedLogo": "string",
                "overalMileageUnit": "string",
                "payload": "string",
                "quotationDate": "2026-04-07T15:26:31.401Z",
                "quotationMakeCode": "string",
                "quotationMakeLabel": "string",
                "quotationModelCode": "string",
                "quotationModelLabel": "string",
                "quotationValue": 0,
                "quotationValueWithoutTax": 0,
                "quotationVersionCode": "string",
                "quotationVersionLabel": "string",
                "reasonForReservation": "string",
                "registrationNumber": "string",
                "registrationPrice": 0,
                "RRDICode": "string",
                "saleType": "string",
                "SCcarDefinition": {
                    "market": "string",
                    "country": "string",
                    "versionId": "string",
                    "externalColorId": "string",
                    "internalColorId": "string",
                    "optionsIdList": "string"
                },
                "splitOffer": true,
                "stockOwner": "string",
                "tariffAreaCode": "string",
                "tariffCalculationDate": "2026-04-07T15:26:31.401Z",
                "tariffCode": "string",
                "tariffStartDate": "2026-04-07T15:26:31.401Z",
                "versionBasicAutomotiveTaxAmount": 0,
                "versionBasicAutomotiveTaxRatePercentage": 0,
                "warrantyCode": "string",
                "warrantyDuration": 0,
                "warrantyLabel": "string",
                "modelYear": "string",
                "isShowroomVehicle": true,
                "vocationLevel1": {
                    "id": "string",
                    "label": "string"
                },
                "vocationLevel2": {
                    "id": "string",
                    "label": "string"
                },
                "capabilities": [
                    {
                    "property": "string",
                    "value": "string"
                    }
                ],
                "missions": [
                    {
                    "level1": "string",
                    "level2": "string"
                    }
                ],
                "mandatoryOptions": [
                    {
                    "code": "string",
                    "label": "string",
                    "isPack": true,
                    "isLocalPack": true,
                    "shortCode": "string",
                    "isAccessory": true,
                    "packEquipmentsIncluded": [
                        {
                        "code": "string",
                        "label": "string",
                        "shortCode": "string"
                        }
                    ],
                    "isGrids": true,
                    "isMandatory": true,
                    "isSpecialSerie": true
                    }
                ]
                },
                "customerType": "string",
                "partExchange": {
                "conversionPremium": true,
                "idPX": "string",
                "valuationKey": "string",
                "externalReferenceId": "string",
                "nonEligibilityReason": "string",
                "status": "string",
                "registrationNumber": "string",
                "VIN": "string",
                "firstRegistrationDate": "2026-04-07",
                "registrationCertificateDate": "2026-04-07",
                "creationDate": "2026-04-07T15:26:31.401Z",
                "updateDate": "2026-04-07T15:26:31.401Z",
                "makeId": "string",
                "makeLabel": "string",
                "modelId": "string",
                "modelLabel": "string",
                "bodyTypeId": "string",
                "bodyTypeLabel": "string",
                "gearTypeId": "string",
                "gearTypeLabel": "string",
                "fuelTypeId": "string",
                "fuelTypeLabel": "string",
                "doorsId": "string",
                "doorsLabel": "string",
                "trimId": "string",
                "trimLabel": "string",
                "versionLabel": "string",
                "engineId": "string",
                "engineLabel": "string",
                "notice": "string",
                "bonusAmount": 0,
                "bonusDetails": 0,
                "governmentContributionAmount": 0,
                "dealerValuation": 0,
                "dealerDiscount": 0,
                "isSetByDealer": true,
                "mobilePhone": "string",
                "mobilePhonePrefix": "string",
                "email": "string",
                "valuation": 0,
                "endDate": "2026-04-07T15:26:31.401Z",
                "valuationDate": "2026-04-07T15:26:31.401Z",
                "firmValuation": 0,
                "firmValuationWithoutTax": 0,
                "firmValuationDate": "2026-04-07T15:26:31.401Z",
                "VATIsRecoverable": true,
                "VATRecoverablePercentage": 0,
                "VATRecoverableAmount": 0,
                "finalValuation": 0,
                "finalValuationWithoutTax": 0,
                "finalValuationDate": "2026-04-07T15:26:31.401Z",
                "vehicleNotReturned": true,
                "outstandingFinance": 0,
                "cashBack": 0,
                "carEquity": 0,
                "statisticalRepairCostsFees": 0,
                "declaredRepairCostsFees": 0,
                "maximumMileageAtDelivery": 0,
                "overalMileage": 0,
                "annualMileage": 0,
                "governmentContributions": {
                    "id": "string",
                    "noticeUrl": "string",
                    "addedAt": "2026-04-07T15:26:31.401Z",
                    "customerType": "string",
                    "couponCode": "string",
                    "code": "string",
                    "label": "string",
                    "type": "string",
                    "subType": "string",
                    "netAmount": 0,
                    "withoutTaxAmount": 0,
                    "taxRatePercentage": 0,
                    "taxAmount": 0,
                    "description": "string",
                    "notice": "string",
                    "netAmountDefault": 0,
                    "netAmountAdditional": 0,
                    "pricingDecompositionDisplay": true,
                    "EOTPCode": "string",
                    "ESSORCode": "string",
                    "amountDefaultLabel": "string",
                    "amountAdditionalLabel": "string",
                    "percent": "string",
                    "percentPart1": "string",
                    "percentPart2": "string"
                },
                "promotions": {
                    "id": "string",
                    "noticeUrl": "string",
                    "addedAt": "2026-04-07T15:26:31.401Z",
                    "customerType": "string",
                    "couponCode": "string",
                    "code": "string",
                    "label": "string",
                    "type": "string",
                    "subType": "string",
                    "netAmount": 0,
                    "withoutTaxAmount": 0,
                    "taxRatePercentage": 0,
                    "taxAmount": 0,
                    "description": "string",
                    "notice": "string",
                    "netAmountDefault": 0,
                    "netAmountAdditional": 0,
                    "pricingDecompositionDisplay": true,
                    "EOTPCode": "string",
                    "ESSORCode": "string",
                    "amountDefaultLabel": "string",
                    "amountAdditionalLabel": "string",
                    "percent": "string",
                    "percentPart1": "string",
                    "percentPart2": "string"
                },
                "oldPromotions": {
                    "id": "string",
                    "noticeUrl": "string",
                    "addedAt": "2026-04-07T15:26:31.401Z",
                    "customerType": "string",
                    "couponCode": "string",
                    "code": "string",
                    "label": "string",
                    "type": "string",
                    "subType": "string",
                    "netAmount": 0,
                    "withoutTaxAmount": 0,
                    "taxRatePercentage": 0,
                    "taxAmount": 0,
                    "description": "string",
                    "notice": "string",
                    "netAmountDefault": 0,
                    "netAmountAdditional": 0,
                    "pricingDecompositionDisplay": true,
                    "EOTPCode": "string",
                    "ESSORCode": "string",
                    "amountDefaultLabel": "string",
                    "amountAdditionalLabel": "string",
                    "percent": "string",
                    "percentPart1": "string",
                    "percentPart2": "string"
                },
                "NRMRecordId": "string",
                "firmValuationId": "string",
                "valuationMethod": "string",
                "statusId": 0,
                "chronoId": "string",
                "urls": [
                    {
                    "link": "string",
                    "type": "string"
                    }
                ],
                "object": "string"
                },
                "carAlert": {
                "vehicleType": "string"
                },
                "userId": "string",
                "userType": "string",
                "profilingCookies": [
                {
                    "id": "string"
                }
                ],
                "pricingEngineInput": "string",
                "pricingEngineOutput": "string",
                "externalReferenceId": "string",
                "dealer": {
                "attachedNVActorCode": "string",
                "attachedNVActorBrand": "string",
                "legalInformation": "string",
                "leadEligible": true,
                "attachedVNActorSiteGeo": "string",
                "siteGeo": "string",
                "RRDICode": "string",
                "sincom": "string",
                "mainDealerSincom": "string",
                "siteCode": "string",
                "phoneNumberPrefix": "string",
                "dpoEmail": "string",
                "privacyEmail": "string",
                "legalGeoPoint": "string",
                "legalAddressLine2": "string",
                "legalZipCode": "string",
                "legalCity": "string",
                "legalCountry": "string",
                "legalCounty": "string",
                "isEditable": true,
                "latitude": 0,
                "longitude": 0,
                "externalId": "string",
                "type": "string",
                "brand": "string",
                "dealerObject": "string",
                "name": "string",
                "phoneNumber": "string",
                "salesManId": "string",
                "addressLine2": "string",
                "city": "string",
                "country": "string",
                "email": "string",
                "geoPoint": "string",
                "OICCode": "string",
                "openHours": "string",
                "RCSNumber": "string",
                "siretNumber": "string",
                "zipCode": "string",
                "TVANumber": "string"
                }
            },
            "npeRequest": "string",
            "npeResponse": "string",
            "payment": [
                {
                "termsAndConditions": "string",
                "method": "string",
                "transactionId": "string",
                "eShopId": "string",
                "status": "string",
                "errorCode": "string",
                "attempts": 0,
                "lastAttempt": "string",
                "isThirdPartyBank": true,
                "referenceBank": "string",
                "offlineMethodLabel": "string",
                "offlineMethodID": "creditCard",
                "deposit": {
                    "amount": 0,
                    "currency": "string",
                    "isEditedByDealer": true
                },
                "isWithLeasing": true,
                "isWithFinance": true,
                "isWithExternalLeaser": true
                }
            ],
            "discounts": {
                "b2bDelegationGrids": [
                {
                    "code": "string",
                    "title": "string",
                    "discountAmount": 0,
                    "discountPercentage": 0,
                    "incompatibleTypes": "string"
                }
                ],
                "fleetSalesProtocol": {
                "validStartDate": "string",
                "validEndDate": "string",
                "fsCodProtocolId": "string",
                "fsCodPromoId": "string",
                "fsDiscountId": "string",
                "fsDiscountamount": 0,
                "fsDiscountPerc": 0
                },
                "couponDetails": {
                "couponCode": "string",
                "couponApplied": true,
                "discountamount": 0,
                "discountPercentage": 0,
                "promoTitle": "string",
                "validityDate": "string"
                },
                "discountsTotals": {
                "withTaxesAndFees": 0,
                "withoutTaxesAndFees": 0
                },
                "hidden": true
            },
            "deductions": [
                {
                "code": "string",
                "description": "string",
                "taxId": "string",
                "discountAmount": 0,
                "ratePercentage": 0,
                "totalDeducted": 0
                }
            ],
            "incentives": [
                {
                "ode": "string",
                "description": "string",
                "incentiveWithTaxes": 0,
                "incentiveWithoutTaxes": 0
                }
            ],
            "taxes": [
                {
                "id": "string",
                "description": "string",
                "amount": 0,
                "rate": 0
                }
            ],
            "fees": [
                {
                "id": "string",
                "description": "string",
                "amountWithTaxes": 0,
                "amountWithoutTaxes": 0
                }
            ],
            "dealer": {
                "market": "string",
                "mainSincom": "string",
                "sincomCode": "string",
                "siteCode": "string",
                "rRDICode": "string",
                "oIC": "string",
                "culture": "string",
                "deliveryAddress": "string",
                "siteGeo": "string",
                "email": "string",
                "name": "string",
                "phone": "string",
                "companyName": "string",
                "vatNumber": "string",
                "retailerAddress": {
                "street": "string",
                "zipCode": "string",
                "zoneId": "string",
                "city": "string",
                "country": "string",
                "province": "string",
                "registrationPostalCode": "string",
                "geoPoint": "string",
                "addressLine2": "string"
                },
                "posEmail": "string",
                "posPhone": "string",
                "commercialRegister": "string",
                "isSuccursale": true,
                "legalEntityCode": "string",
                "distance": "string",
                "salesmanName": "string",
                "attachedNVActorCode": "string",
                "attachedNVActorBrand": "string",
                "mainDealerSincom": "string",
                "oicCode": "string",
                "externalId": "string",
                "logisticLocation": "string",
                "dpoEmail": "string",
                "privacyEmail": "string",
                "phoneNumber": "string",
                "openHours": "string",
                "latitude": "string",
                "longitude": "string",
                "website": "string",
                "siretNumber": "string",
                "customerServiceEmail": "string",
                "headOfSalesEmail": "string",
                "legalForm": "string",
                "capital": "string",
                "rcsNumber": "string",
                "tvaNumber": "string",
                "tradeName": "string",
                "isPrivate": true
            },
            "optionals": [
                {
                "code": "string",
                "isStandardOption": true,
                "isSelected": true,
                "isMandatory": true,
                "isChildOfPack": true
                }
            ],
            "omsOptionals": [
                {
                "code": "string",
                "relatedOptions": "string",
                "alternativeOpt": "string"
                }
            ],
            "packs": [
                {
                "code": "string",
                "isStandardOption": true,
                "isSelected": true,
                "optIncluded": [
                    {
                    "code": "string",
                    "description": "string"
                    }
                ]
                }
            ],
            "energyLabels": {
                "urlImage": "string"
            },
            "financialProfile": {
                "id": "P",
                "type": "Private"
            },
            "leasing": {
                "leaseProductLabel": "string",
                "duration": "string",
                "annualMileage": "string",
                "monthlyPayment": "string",
                "leaseQuoteEvaluationId": "string",
                "leaseQuoteStatus": 0,
                "driverInformation": "string"
            },
            "leaser": {
                "CRMId": "string",
                "companyName": "string",
                "TVANumber": "string",
                "siretNumber": "string",
                "email": "string",
                "phoneNumber": "string",
                "streetName": "string",
                "streetNumber": "string",
                "floor": "string",
                "postalCode": "string",
                "town": "string",
                "state": "string",
                "country": "string",
                "companyCreationDate": "YYYY-MM-DD",
                "contact": {
                "civilityCode": "string",
                "civilityLabel": "string",
                "title": "string",
                "firstname": "string",
                "lastname": "string",
                "professionalMobilePhone": "string",
                "professionalMobilePhonePrefix": "string",
                "professionalEmail": "string",
                "streetName": "string",
                "streetNumber": "string",
                "floor": "string",
                "postalCode": "string",
                "town": "string",
                "state": "string",
                "country": "string"
                },
                "paymentTerms": {
                "leadtimeTypeCode": "string",
                "leadtimeType": "string",
                "leadtimeCode": "string",
                "leadtime": 0
                }
            },
            "userProfile": {
                "paymentTerms": {
                "leadtimeTypeCode": "string",
                "leadtimeType": "string",
                "leadtimeCode": "string",
                "leadtime": 0
                }
            },
            "subSubChannelAndTco": {
                "eotpCode": "string",
                "operationCode": "string",
                "channelCode": "string",
                "subChannelCode": "string",
                "subSubChannelCode": "string",
                "tcoCode": "string",
                "ccbCode": "string"
            },
            "termsAndConditions": [
                {
                "code": "string",
                "label": "string",
                "description": "string",
                "isFlagged": true
                }
            ],
            "consents": [
                {}
            ],
            "totalOptions": {
                "withVAT": 0,
                "withVATDeduction": 0,
                "withTaxesAndFees": 0,
                "withTaxesDeductionsAndFees": 0,
                "withoutTaxesAndFees": 0
            },
            "vehiclePrice": {
                "withVAT": 0,
                "withVATDeduction": 0,
                "withTaxesAndFees": 0,
                "withTaxesDeductionsAndFees": 0,
                "withoutTaxesAndFees": 0
            },
            "vehicleUsage": "private",
            "onBoardDoc": true,
            "concludedContract": "dealership",
            "finalPriceWoTradeIn": {
                "withVAT": 0,
                "withVATDeduction": 0,
                "withTaxesAndFees": 0,
                "withTaxesDeductionsAndFees": 0,
                "withoutTaxesAndFees": 0
            },
            "finalPriceWithTradeIn": {
                "withVAT": 0,
                "withVATDeduction": 0,
                "withTaxesAndFees": 0,
                "withTaxesDeductionsAndFees": 0,
                "withoutTaxesAndFees": 0
            },
            "finalPriceWithScrapping": {
                "withVAT": 0,
                "withVATDeduction": 0,
                "withTaxesAndFees": 0,
                "withTaxesDeductionsAndFees": 0,
                "withoutTaxesAndFees": 0
            },
            "isFirstBasketLoading": true,
            "confirmationOrderUrls": {
                "cartSyncPage": "string",
                "vehicleDashboardPage": "string"
            },
            "source": "string",
            "lcjWidgetData": {
                "mopData": {
                "capabilities": [
                    {
                    "property": "string",
                    "value": "string"
                    }
                ],
                "missions": [
                    {
                    "level1": "string",
                    "level2": "string"
                    }
                ],
                "vocationLevel1": {
                    "id": "string",
                    "label": "string"
                },
                "vocationLevel2": {
                    "id": "string",
                    "label": "string"
                }
                },
                "lcjRecoveryObject": "string",
                "recommendedOptions": "string",
                "hashId": "string"
            },
            "isBulkOrderItem": true,
            "isCustomerInvolved": true,
            "eseller": {
                "name": "string",
                "phone": "string",
                "email": "string"
            },
            "isSellerInvolved": true,
            "isDealerInvolved": true,
            "oldQuotationCode": "string",
            "qrCodeLink": "string",
            "configuratorJourney": "string",
            "accessories": [
                {
                "code": "string",
                "desc": "string",
                "typology": "string",
                "category": "string",
                "price": {
                    "price": 0,
                    "priceNoVat": 0
                },
                "thumbnail": "string"
                }
            ],
            "warrantyExtensionServices": {
                "planCode": "string",
                "familyCode": "string",
                "price": {
                "price": 0,
                "priceNoVat": 0
                },
                "description": "string"
            },
            "maintenanceServices": {
                "planCode": "string",
                "familyCode": "string",
                "price": {
                "price": 0,
                "priceNoVat": 0
                },
                "description": "string"
            }
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/wishlist/v1/pdf/ncs/pdf-url-download'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header brandCode = '83'
      And header marketCode = '1000'
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 400