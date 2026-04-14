Feature: OMNI Magento Service Logic

  Background:
    
        * print 'Token utilisé pour ce test :', token
Scenario: Save quotation of an user

      * def RequestBody = 
      """
          {
              "car": {
                  "isSellerInvolved": true,
                  "isDealerInvolved": true,
                  "backofficeFeatureFlip": {
                      "tradeInLocked": true,
                      "b2cB2bSwitcherHidden": true,
                      "accessoriesServicesLocked": true,
                      "fincoCallsHidden": true
                  },
                  "pdfDataCarSelector": {
                      "electricCarRangeFullBattery": "",
                      "emissionStandard": "EURO 6E",
                      "optionals": [
                          {
                              "code": "S-052",
                              "desc": "Bremsassistent",
                              "isMandatory": false,
                              "isSelected": true,
                              "isStandardOption": true,
                              "isChildOfPack": true
                          }
                      ],
                      "packs": [
                          {
                              "code": "string",
                              "desc": "string",
                              "isStandardOption": true,
                              "isSelected": true,
                              "optIncluded": [
                                  "string"
                              ]
                          }
                      ]
                  },
                  "pdfDataBasket": null,
                  "pdfDataCheckout": null,
                  "configurationDetails": {
                      "workingCO2": "83",
                      "configurationCode": "ZY0aofxT",
                      "configuredBy": "1715159351786028514ba-e2a4-0199-505e-42cee1f86815",
                      "savedFor": "1715159351786028514ba-e2a4-0199-505e-42cee1f86815",
                      "userType": "unlogged",
                      "createdDate": "2024-05-10T09:51:55.074571543",
                      "zoneId": "Europe/Rome",
                      "guestUserSessionId": "1715159351786028514ba-e2a4-0199-505e-42cee1f86815",
                      "vehicleConfiguration": {
                          "vehicleCode": "83622MFG1000",
                          "vehicleType": "MTO",
                          "userJourney": "string",
                          "isFromStock": "",
                          "isWcwRequest": false,
                          "stillManufacturable": true,
                          "zipCodeRegistration": "string",
                          "listPrice": null,
                          "netPrice": 34455,
                          "monthlyPayment": 213.13,
                          "sourceCode": "string",
                          "couponCode": "string",
                          "isVisible": true,
                          "estimatedDeliveryDate": null,
                          "brand": {
                              "code": "83",
                              "desc": "Alfa Romeo"
                          },
                          "model": {
                              "code": "6221",
                              "desc": "Tonale"
                          },
                          "market": {
                              "code": "3103",
                              "desc": "AT"
                          },
                          "language": {
                              "code": "3",
                              "desc": "de"
                          },
                          "trimCode": "010",
                          "trimName": "Sprint",
                          "trimGroupCode": null,
                          "gearboxType": null,
                          "engineCode": "EXC1150",
                          "engineName": "1.5 Hybrid 130 PS 96 kW TCT",
                          "engineGroupCode": null,
                          "fuelType": "38",
                          "drive": "Doppelkupplungsgetriebe",
                          "color": "CL-414",
                          "wheels": "8-WFL",
                          "interiors": "IN-070",
                          "budgetFamily": "M",
                          "marketEquipment": "165",
                          "completeConfigurationList": [
                              "A-1WY",
                              "S-052",
                              "S-0XR",
                              "S-1CQ",
                              "S-1F6",
                              "S-1J8",
                              "S-3RV",
                              "S-508",
                              "S-9S8",
                              "S-LSS",
                              "S-NH1",
                              "S-NH4",
                              "S-XA3",
                              "S-XGM",
                              "W-05F",
                              "W-0L6",
                              "W-0X9",
                              "W-1RU",
                              "W-62Y",
                              "W-B1H",
                              "C-0YB",
                              "C-GX4",
                              "C-GXP",
                              "T-1GK",
                              "T-JY2",
                              "T-RCG",
                              "T-RFP",
                              "T-RFX",
                              "T-RS3",
                              "T-RS9",
                              "T-RTK",
                              "B-1JA",
                              "B-9U7",
                              "B-LNV",
                              "8-WFL",
                              "D-1S2",
                              "D-4CS",
                              "D-9Z5",
                              "D-CUN",
                              "D-GNK",
                              "D-SCH",
                              "F-1S4",
                              "F-853",
                              "Q-4TB",
                              "M-52Y",
                              "X-5K4",
                              "X-CFW",
                              "7-5YY",
                              "CL-414",
                              "IN-070"
                          ],
                          "disclaimer": {
                              "text": "string",
                              "style": {
                                  "displaySize": 0
                              }
                          },
                          "useCod": "VP",
                          "grBodyStyle": "",
                          "vehicleImage": "https://lb.assets.fiat.com/vl-picker-service/rest/getImage?wheel=WFL&fuel=38&source=omnimto&body=414&resolution=BIG&mmvs=83622MFG1000&market=3103&seat=070&view=EXT&opt=052,0XR,1CQ,1F6,1J8,3RV,508,9S8,LSS,NH1,NH4,XA3,XGM,05F,0L6,0X9,1RU,62Y,B1H,0YB,GX4,GXP,1GK,JY2,RCG,RFP,RFX,RS3,RS9,RTK,1JA,9U7,LNV,1S2,4CS,9Z5,CUN,GNK,SCH,1S4,853,4TB,52Y,5K4,CFW,5YY&trim=010&engine=EXC1150&width=1445&angle=1&model=6221&brand=83&consumer=high&height=768",
                          "numberOfGears": "7 Gang",
                          "colorName": "Rosso Alfa",
                          "interiorName": "Stoff-/Vinylsitze schwarz",
                          "cylinderCapacity": null,
                          "horsePower": "96",
                          "emissionStandard": null,
                          "privacyPolicyChecks": false,
                          "optionalsForNPE": [],
                          "completeConfigurationListSccf": [
                              "A-1WY",
                              "S-052",
                              "S-0XR",
                              "S-1CQ",
                              "S-1F6",
                              "S-1J8",
                              "S-3RV",
                              "S-508",
                              "S-9S8",
                              "S-LSS",
                              "S-NH1",
                              "S-NH4",
                              "S-XA3",
                              "S-XGM",
                              "W-05F",
                              "W-0L6",
                              "W-0X9",
                              "W-1RU",
                              "W-62Y",
                              "W-B1H",
                              "C-0YB",
                              "C-GX4",
                              "C-GXP",
                              "T-1GK",
                              "T-JY2",
                              "T-RCG",
                              "T-RFP",
                              "T-RFX",
                              "T-RS3",
                              "T-RS9",
                              "T-RTK",
                              "B-1JA",
                              "B-9U7",
                              "B-LNV",
                              "8-WFL",
                              "D-1S2",
                              "D-4CS",
                              "D-9Z5",
                              "D-CUN",
                              "D-GNK",
                              "D-SCH",
                              "F-1S4",
                              "F-853",
                              "Q-4TB",
                              "M-52Y",
                              "X-5K4",
                              "X-CFW",
                              "7-5YY",
                              "CL-414",
                              "IN-070"
                          ]
                      },
                      "deletionDate": ""
                  },
                  "delivery": {
                      "estimatedDeliveryDate": null,
                      "maxRangeDate": null,
                      "minRangeDate": null,
                      "vehicleType": null,
                      "wishedDeliveryDate": null,
                      "locationMilestoneRange": null,
                      "reservationId": "",
                      "reservationStatus": "",
                      "omsOrderId": "",
                      "orderedVin": "",
                      "reservationExpiration": "",
                      "deliveryAnticipationAccepted": false,
                      "deliveryAtHome": true,
                      "shippingData": {
                          "completeStreet": "",
                          "zipCode": "",
                          "city": "",
                          "country": "",
                          "province": ""
                      },
                      "deliveryAtHomeCost": {
                          "amount": "",
                          "currency": ""
                      }
                  },
                  "dealerAdditional": null,
                  "financialProduct": {
                      "monthlyPaymentTextWithTax": "string",
                      "monthlyPaymentTextWithoutTax": "string",
                      "productKey": null,
                      "creationDate": null,
                      "idFinanceFile": null,
                      "idQuotation": null,
                      "callbackURL": "",
                      "mofId": "",
                      "financialProductCategory": null,
                      "financialType": "LOA",
                      "caApprovalStatus": "",
                      "commercialCode": null,
                      "financialCode": null,
                      "financialProductTitle": "Restwertleasing",
                      "description": "",
                      "deposit": {
                          "amount": 6891,
                          "currency": ""
                      },
                      "monthlyPayment": {
                          "amountInclTax": 213.13,
                          "amountExclTax": null,
                          "currency": ""
                      },
                      "duration": "24",
                      "annualMileage": "10000",
                      "globalMileage": null,
                      "isBalloon": true,
                      "financialSubType": null,
                      "financialValidityDate": "",
                      "isOffline": true,
                      "isFromCS": true,
                      "financedAmount": null,
                      "firstRental": null,
                      "financeSimulation": {
                          "parameters": null
                      },
                      "primaryText": null,
                      "creditInterest": null,
                      "promotionIdList": null,
                      "discountAppliedRefs": null
                  },
                  "vehicleRegistration": {
                      "street": null,
                      "zipCode": null,
                      "zoneId": null,
                      "city": null,
                      "country": null,
                      "province": null,
                      "registrationPostalCode": null
                  },
                  "customer": {
                      "magentoUserId": 0,
                      "crmUserId": null,
                      "customerFirstId": null,
                      "gigyaUserId": null,
                      "gigyaId": "1715159351786028514ba-e2a4-0199-505e-42cee1f86815",
                      "userType": null,
                      "salutation": null,
                      "firstName": null,
                      "lastName": null,
                      "email": null,
                      "language": null,
                      "profession": null,
                      "fiscalID": null,
                      "vatNumber": null,
                      "commercialName": null,
                      "dateOfBirth": null,
                      "cityOfBirth": null,
                      "industry": null,
                      "dateOfCompanyCreation": null,
                      "mobile": null,
                      "phone": null,
                      "nationalIdType": null,
                      "citizenship": null,
                      "hasCustomerConfirmed": null,
                      "nationalIdNumber": null,
                      "provinceOfBirth": null,
                      "title": null,
                      "postalData": null,
                      "billingData": null,
                      "b2bContactData": null,
                      "b2bRepresentativeData": null
                  },
                  "mop": {
                      "mopId": "NjYzZGQyMWFlNzcxMzdjM2U4MGE1MjNk",
                      "mopStatus": null,
                      "incrementalOrderIdCreateDate": null,
                      "isAssisted": false,
                      "offerValidityDate": "1717192799000.392",
                      "offerCreateDate": "1715320330000",
                      "offerCreatedby": null,
                      "offerLastUpdate": null,
                      "offerUpdatedBy": null,
                      "assistedByUserType": null,
                      "frozenDate": null,
                      "isFrozen": false,
                      "invalidBasket": null,
                      "isFrozenB2BOffer": null,
                      "isFrozenPaymentMethod": null,
                      "offerFreezeDate": null
                  },
                  "npeRequest": "{%22brand%22:%2283%22,%22color%22:%22414%22,%22country%22:%22AT%22,%22language%22:%22de%22,%22mandatoryOptionals%22:null,%22optionals%22:%22%22,%22outMode%22:%22S%22,%22priceType%22:%22eStorePrice%22,%22source%22:%22B2C%22,%22trim%22:%22070%22,%22version%22:%22622.MFG.1.000%22,%22energy%22:%2238%22,%22kind%22:%22VP%22,%22requestFincoData%22:true,%22vehicleCode%22:%2283622MFG1000%22}",
                  "payment": null,
                  "discounts": {
                      "b2bDelegationGrids": null,
                      "fleetSalesProtocol": null,
                      "couponDetails": {
                          "couponApplied": true,
                          "couponCode": "0efc1a5c-4709-4b80-bb11-dcab99cfae8a",
                          "couponCreationDate": "1715327567881.657480",
                          "couponLabel": "STOCKSUPERCODE24",
                          "discountPercentage": 0,
                          "discountamount": 0,
                          "promoTitle": "",
                          "validityDate": ""
                      },
                      "discountsTotals": {
                          "withTaxesAndFees": 0,
                          "withoutTaxesAndFees": 0
                      },
                      "hidden": false
                  },
                  "deductions": null,
                  "incentives": null,
                  "taxes": null,
                  "fees": null,
                  "dealer": {
                      "salesmanName": "string",
                      "market": "AT",
                      "mainSincom": "0110723",
                      "sincomCode": "0170723",
                      "siteCode": "000",
                      "rRDICode": "AT0029A",
                      "oIC": "00000191",
                      "culture": "de",
                      "deliveryAddress": "310379A",
                      "siteGeo": "0000094995",
                      "email": "office9021@eisner.at",
                      "name": "EISNER AUTO SÜDRING 332 VERTRIEB UND SERVICE GMBH",
                      "phone": "046337238",
                      "companyName": "",
                      "vatNumber": "U37098804",
                      "retailerAddress": {
                          "street": "SUEDRING 332",
                          "zipCode": "9020",
                          "zoneId": "2",
                          "city": "KLAGENFURT",
                          "country": "",
                          "province": null,
                          "registrationPostalCode": null
                      },
                      "posEmail": "office9021@eisner.at",
                      "posPhone": "0463319131",
                      "commercialRegister": null,
                      "legalEntityCode": "0760723"
                  },
                  "optionals": [
                      {
                          "code": "S-052",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-0XR",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-1CQ",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-1F6",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-1J8",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-3RV",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-508",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-9S8",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-LSS",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-NH1",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-NH4",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-XA3",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "S-XGM",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "W-05F",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "W-0L6",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "W-0X9",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "W-1RU",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "W-62Y",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "W-B1H",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "C-0YB",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "C-GX4",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "C-GXP",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "T-1GK",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "T-JY2",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "T-RCG",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "T-RFP",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "T-RFX",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "T-RS3",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "T-RS9",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "T-RTK",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": true,
                          "isChildOfPack": false
                      },
                      {
                          "code": "B-1JA",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "B-9U7",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "B-LNV",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "D-1S2",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "D-4CS",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "D-9Z5",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "D-CUN",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "D-GNK",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "D-SCH",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "F-1S4",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "F-853",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": true,
                          "isChildOfPack": false
                      },
                      {
                          "code": "Q-4TB",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "M-52Y",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": true,
                          "isChildOfPack": false
                      },
                      {
                          "code": "X-5K4",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "X-CFW",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": false,
                          "isChildOfPack": false
                      },
                      {
                          "code": "7-5YY",
                          "isStandardOption": true,
                          "isSelected": true,
                          "isMandatory": true,
                          "isChildOfPack": false
                      }
                  ],
                  "packs": [],
                  "energyLabels": {
                      "urlImage": "https://visuel3d-secure.peugeot.com/v3dcentral/CO2Class/de-AT/Rollover/C.gif"
                  },
                  "financialProfile": {
                      "id": "P",
                      "type": "Private"
                  },
                  "leasing": null,
                  "leaser": null,
                  "userProfile": null,
                  "subSubChannelAndTco": {
                      "promoCode": "string",
                      "ccbCode": "",
                      "tcoCode": "(1"
                  },
                  "termsAndConditions": null,
                  "consents": null,
                  "totalOptions": null,
                  "vehiclePrice": null,
                  "vehicleUsage": null,
                  "onBoardDoc": false,
                  "concludedContract": null,
                  "finalPriceWoTradeIn": null,
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
                  "isFirstBasketLoading": null,
                  "confirmationOrderUrls": null,
                  "orderConfirmationRequest": null,
                  "source": null,
                  "lcjWidgetData": null,
                  "quantity": null,
                  "isBulkOrder": null,
                  "selectedTariffZone": null,
                  "bulkReservation": null,
                  "isBulkOrderItem": false
              },
              "accessories": {
                  "isValidatedByCustomer": true,
                  "personalizations": {
                      "personalizations": {
                          "isValidatedByCustomer": true
                      }
                  }
              },
              "serviceContract": {
                  "serviceContracts": {
                      "isValidatedByCustomer": true,
                      "options": {
                          "isValidatedByCustomer": true
                      }
                  }
              }
          }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/magento/v1/offer/save'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

     
      And header sessionId = "16978178703580296b6f1-0697-c104-5741-89c29316e0ef"
      And header brandCode = 83
      And header marketCode = 3103
      And header languageCode = 3
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200



Scenario: Update quotation of an user

      * def RequestBody = 
      """
 {
    "itemId" : 1355171,
    "sku" : "car",
    "qty" : 1,
    "name" : "car",
    "price" : 1,
    "productType" : "virtual",
    "quoteId" : "163580",
    "extensionAttributes" : {
      "itemData" : "{\"car\":{\"pdfDataCarSelector\":{\"electricCarRangeFullBattery\":\"\",\"emissionStandard\":\"EURO 6E\",\"optionals\":[{\"code\":\"S-052\",\"desc\":\"Bremsassistent\",\"isChildOfPack\":true,\"isMandatory\":false,\"isSelected\":true,\"isStandardOption\":true}],\"packs\":[{\"code\":\"string\",\"desc\":\"string\",\"isStandardOption\":true,\"isSelected\":true,\"optIncluded\":[\"string\"],\"isTrimPack\":null}],\"isWLTP\":null},\"pdfDataBasket\":null,\"pdfDataCheckout\":null,\"configurationDetails\":{\"configurationCode\":\"ZY0aofxT\",\"configuredBy\":\"1715159351786028514ba-e2a4-0199-505e-42cee1f86815\",\"preconfiguredOriginCode\":null,\"savedFor\":\"1715159351786028514ba-e2a4-0199-505e-42cee1f86815\",\"userType\":\"unlogged\",\"createdDate\":\"2024-05-10T09:51:55.074571543\",\"zoneId\":\"Europe\\/Rome\",\"guestUserSessionId\":\"1715159351786028514ba-e2a4-0199-505e-42cee1f86815\",\"vehicleConfiguration\":{\"vehicleCode\":\"83622MFG1000\",\"vehicleType\":\"MTO\",\"originalUseCodeUrl\":null,\"vehicleTypeChanged\":null,\"userJourney\":\"string\",\"isFromStock\":\"\",\"isWcwRequest\":false,\"stillManufacturable\":true,\"zipCodeRegistration\":\"string\",\"listPrice\":null,\"netPrice\":34455,\"monthlyPayment\":213.13,\"sourceCode\":\"string\",\"couponCode\":\"string\",\"isVisible\":true,\"estimatedDeliveryDate\":null,\"brand\":{\"code\":\"83\",\"desc\":\"Alfa Romeo\"},\"model\":{\"code\":\"6221\",\"desc\":\"Tonale\"},\"market\":{\"code\":\"3103\",\"desc\":\"AT\"},\"language\":{\"code\":\"3\",\"desc\":\"de\"},\"trimCode\":\"010\",\"trimName\":\"Sprint\",\"trimGroupCode\":null,\"gearboxType\":null,\"engineCode\":\"EXC1150\",\"engineName\":\"1.5 Hybrid 130 PS 96 kW TCT\",\"engineGroupCode\":null,\"fuelType\":\"38\",\"drive\":\"Doppelkupplungsgetriebe\",\"color\":\"CL-414\",\"wheels\":\"8-WFL\",\"interiors\":\"IN-070\",\"budgetFamily\":\"M\",\"marketEquipment\":\"165\",\"completeConfigurationList\":[\"A-1WY\",\"S-052\",\"S-0XR\",\"S-1CQ\",\"S-1F6\",\"S-1J8\",\"S-3RV\",\"S-508\",\"S-9S8\",\"S-LSS\",\"S-NH1\",\"S-NH4\",\"S-XA3\",\"S-XGM\",\"W-05F\",\"W-0L6\",\"W-0X9\",\"W-1RU\",\"W-62Y\",\"W-B1H\",\"C-0YB\",\"C-GX4\",\"C-GXP\",\"T-1GK\",\"T-JY2\",\"T-RCG\",\"T-RFP\",\"T-RFX\",\"T-RS3\",\"T-RS9\",\"T-RTK\",\"B-1JA\",\"B-9U7\",\"B-LNV\",\"8-WFL\",\"D-1S2\",\"D-4CS\",\"D-9Z5\",\"D-CUN\",\"D-GNK\",\"D-SCH\",\"F-1S4\",\"F-853\",\"Q-4TB\",\"M-52Y\",\"X-5K4\",\"X-CFW\",\"7-5YY\",\"CL-414\",\"IN-070\"],\"disclaimer\":{\"text\":\"string\",\"style\":{\"displaySize\":0}},\"useCod\":\"VP\",\"grBodyStyle\":\"\",\"grBodyStyleObject\":null,\"vehicleImage\":\"https:\\/\\/lb.assets.fiat.com\\/vl-picker-service\\/rest\\/getImage?wheel=WFL&fuel=38&source=omnimto&body=414&resolution=BIG&mmvs=83622MFG1000&market=3103&seat=070&view=EXT&opt=052,0XR,1CQ,1F6,1J8,3RV,508,9S8,LSS,NH1,NH4,XA3,XGM,05F,0L6,0X9,1RU,62Y,B1H,0YB,GX4,GXP,1GK,JY2,RCG,RFP,RFX,RS3,RS9,RTK,1JA,9U7,LNV,1S2,4CS,9Z5,CUN,GNK,SCH,1S4,853,4TB,52Y,5K4,CFW,5YY&trim=010&engine=EXC1150&width=1445&angle=1&model=6221&brand=83&consumer=high&height=768\",\"numberOfGears\":\"7 Gang\",\"colorName\":\"Rosso Alfa\",\"interiorName\":\"Stoff-\\/Vinylsitze schwarz\",\"cylinderCapacity\":null,\"horsePower\":\"96\",\"emissionStandard\":null,\"privacyPolicyChecks\":false,\"optionalsForNPE\":[],\"completeConfigurationListSccf\":[\"A-1WY\",\"S-052\",\"S-0XR\",\"S-1CQ\",\"S-1F6\",\"S-1J8\",\"S-3RV\",\"S-508\",\"S-9S8\",\"S-LSS\",\"S-NH1\",\"S-NH4\",\"S-XA3\",\"S-XGM\",\"W-05F\",\"W-0L6\",\"W-0X9\",\"W-1RU\",\"W-62Y\",\"W-B1H\",\"C-0YB\",\"C-GX4\",\"C-GXP\",\"T-1GK\",\"T-JY2\",\"T-RCG\",\"T-RFP\",\"T-RFX\",\"T-RS3\",\"T-RS9\",\"T-RTK\",\"B-1JA\",\"B-9U7\",\"B-LNV\",\"8-WFL\",\"D-1S2\",\"D-4CS\",\"D-9Z5\",\"D-CUN\",\"D-GNK\",\"D-SCH\",\"F-1S4\",\"F-853\",\"Q-4TB\",\"M-52Y\",\"X-5K4\",\"X-CFW\",\"7-5YY\",\"CL-414\",\"IN-070\"],\"source\":null,\"upSellOptionsList\":null,\"preConfiguredMandatoryOpt\":null,\"isPreconfiguredOffer\":null,\"isQuadricycle\":null,\"fuelTypeDesc\":null,\"lcvFiltersId\":null,\"transmission\":null,\"isStockSegregation\":null,\"vinSeg\":null,\"taxYear\":null,\"showroomVin\":null,\"crossCountry\":null,\"crossBorderSale\":null,\"vehicleFullName\":null,\"fiscalHorsePower\":null,\"maximumPowers\":null},\"deletionDate\":\"\",\"workingCO2\":\"83\",\"isManufacturable\":null,\"deletionReason\":null},\"delivery\":{\"estimatedDeliveryDate\":null,\"maxRangeDate\":null,\"minRangeDate\":null,\"vehicleType\":null,\"wishedDeliveryDate\":null,\"locationMilestoneRange\":null,\"reservationId\":\"\",\"reservationStatus\":\"\",\"omsOrderId\":\"\",\"orderedVin\":\"\",\"reservationExpiration\":\"\",\"deliveryAnticipationAccepted\":false,\"deliveryAtHome\":true,\"selectedDeliveryType\":null,\"shippingData\":{\"completeStreet\":\"\",\"zipCode\":\"\",\"city\":\"\",\"country\":\"\",\"province\":\"\"},\"deliveryAtHomeCost\":{\"amount\":\"\",\"currency\":\"\"},\"orderKey\":null,\"isDirectDelivery\":null,\"isDeliveryDateEssentialConfirmed\":null},\"dealerAdditional\":null,\"financialProduct\":{\"productKey\":null,\"creationDate\":null,\"idFinanceFile\":null,\"idQuotation\":null,\"callbackURL\":\"\",\"mofId\":\"\",\"financialProductCategory\":null,\"financialType\":\"LOA\",\"caApprovalStatus\":\"\",\"commercialCode\":null,\"financialCode\":null,\"financialProductTitle\":\"Restwertleasing\",\"description\":\"\",\"deposit\":{\"amount\":6891,\"currency\":\"\"},\"monthlyPayment\":{\"amountInclTax\":213.13,\"amountExclTax\":null,\"currency\":\"\"},\"duration\":\"24\",\"annualMileage\":\"10000\",\"globalMileage\":null,\"isBalloon\":true,\"financialSubType\":null,\"financialValidityDate\":\"\",\"isOffline\":true,\"isFromCS\":true,\"financedAmount\":null,\"firstRental\":null,\"financeSimulation\":{\"parameters\":null},\"primaryText\":null,\"creditInterest\":null,\"promotionIdList\":null,\"discountAppliedRefs\":null,\"monthlyPaymentTextWithTax\":\"string\",\"monthlyPaymentTextWithoutTax\":\"string\",\"isIndependent\":null},\"vehicleRegistration\":{\"street\":null,\"zipCode\":null,\"zoneId\":null,\"city\":null,\"country\":null,\"province\":null,\"registrationPostalCode\":null,\"geoPoint\":null,\"addressLine2\":null},\"customer\":{\"magentoUserId\":0,\"crmUserId\":null,\"customerFirstId\":null,\"gigyaUserId\":null,\"gigyaId\":\"1715159351786028514ba-e2a4-0199-505e-42cee1f86815\",\"userType\":null,\"salutation\":null,\"firstName\":null,\"lastName\":null,\"email\":null,\"language\":null,\"profession\":null,\"fiscalID\":null,\"vatNumber\":null,\"commercialName\":null,\"dateOfBirth\":null,\"cityOfBirth\":null,\"industry\":null,\"dateOfCompanyCreation\":null,\"mobile\":null,\"phone\":null,\"nationalIdType\":null,\"citizenship\":null,\"hasCustomerConfirmed\":null,\"nationalIdNumber\":null,\"provinceOfBirth\":null,\"title\":null,\"postalData\":null,\"billingData\":null,\"b2bContactData\":null,\"b2bRepresentativeData\":null},\"mop\":{\"mopId\":\"NjYzZGQyMWFlNzcxMzdjM2U4MGE1MjNk\",\"mopStatus\":null,\"incrementalOrderIdCreateDate\":null,\"isAssisted\":false,\"offerValidityDate\":\"1717192799000.392\",\"offerCreateDate\":\"1715320330000\",\"offerCreatedby\":null,\"offerLastUpdate\":null,\"offerUpdatedBy\":null,\"assistedByUserType\":null,\"frozenDate\":null,\"offerFreezeDate\":null,\"isFrozen\":false,\"invalidBasket\":null,\"isFrozenPaymentMethod\":null,\"isFrozenB2BOffer\":null},\"npeRequest\":\"{\\\"brand\\\":\\\"83\\\",\\\"color\\\":\\\"414\\\",\\\"country\\\":\\\"AT\\\",\\\"language\\\":\\\"de\\\",\\\"mandatoryOptionals\\\":null,\\\"optionals\\\":\\\"\\\",\\\"outMode\\\":\\\"S\\\",\\\"priceType\\\":\\\"eStorePrice\\\",\\\"source\\\":\\\"B2C\\\",\\\"trim\\\":\\\"070\\\",\\\"version\\\":\\\"622.MFG.1.000\\\",\\\"energy\\\":\\\"38\\\",\\\"kind\\\":\\\"VP\\\",\\\"requestFincoData\\\":true,\\\"vehicleCode\\\":\\\"83622MFG1000\\\"}\",\"payment\":null,\"discounts\":{\"b2bDelegationGrids\":null,\"fleetSalesProtocol\":null,\"couponDetails\":{\"couponCode\":\"0efc1a5c-4709-4b80-bb11-dcab99cfae8a\",\"couponApplied\":true,\"discountamount\":0,\"discountPercentage\":0,\"promoTitle\":\"\",\"validityDate\":\"\",\"couponCreationDate\":\"1715327567881.657480\",\"couponLabel\":\"STOCKSUPERCODE24\",\"couponDescription\":null,\"contractFlag\":null},\"discountsTotals\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"hidden\":false,\"discountsB2BOfferFrozen\":null,\"couponList\":null},\"deductions\":null,\"incentives\":null,\"taxes\":null,\"fees\":null,\"dealer\":{\"market\":\"AT\",\"mainSincom\":\"0110723\",\"sincomCode\":\"0170723\",\"siteCode\":\"000\",\"rRDICode\":\"AT0029A\",\"oIC\":\"00000191\",\"culture\":\"de\",\"deliveryAddress\":\"310379A\",\"siteGeo\":\"0000094995\",\"email\":\"office9021@eisner.at\",\"name\":\"EISNER AUTO S�DRING 332 VERTRIEB UND SERVICE GMBH\",\"phone\":\"046337238\",\"companyName\":\"\",\"vatNumber\":\"U37098804\",\"retailerAddress\":{\"street\":\"SUEDRING 332\",\"zipCode\":\"9020\",\"zoneId\":\"2\",\"city\":\"KLAGENFURT\",\"country\":\"\",\"province\":null,\"registrationPostalCode\":null,\"geoPoint\":null,\"addressLine2\":null},\"posEmail\":\"office9021@eisner.at\",\"posPhone\":\"0463319131\",\"commercialRegister\":null,\"legalEntityCode\":\"0760723\",\"isSuccursale\":null,\"logisticLocation\":null,\"isDummy\":null,\"distance\":null,\"salesmanName\":\"string\",\"attachedNVActorCode\":null,\"attachedNVActorBrand\":null,\"mainDealerSincom\":null,\"oicCode\":null,\"externalId\":null,\"dpoEmail\":null,\"privacyEmail\":null,\"phoneNumber\":null,\"openHours\":null,\"latitude\":null,\"longitude\":null,\"website\":null,\"siretNumber\":null,\"customerServiceEmail\":null,\"headOfSalesEmail\":null,\"legalForm\":null,\"capital\":null,\"rcsNumber\":null,\"tvaNumber\":null,\"tradeName\":null,\"isPrivate\":null},\"eseller\":null,\"optionals\":[{\"code\":\"S-052\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-0XR\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-1CQ\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-1F6\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-1J8\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-3RV\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-508\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-9S8\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-LSS\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-NH1\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-NH4\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-XA3\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-XGM\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-05F\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-0L6\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-0X9\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-1RU\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-62Y\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-B1H\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"C-0YB\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"C-GX4\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"C-GXP\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-1GK\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-JY2\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RCG\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RFP\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RFX\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RS3\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RS9\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RTK\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":true,\"isChildOfPack\":false},{\"code\":\"B-1JA\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"B-9U7\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"B-LNV\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-1S2\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-4CS\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-9Z5\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-CUN\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-GNK\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-SCH\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"F-1S4\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"F-853\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":true,\"isChildOfPack\":false},{\"code\":\"Q-4TB\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"M-52Y\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":true,\"isChildOfPack\":false},{\"code\":\"X-5K4\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"X-CFW\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"7-5YY\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":true,\"isChildOfPack\":false}],\"packs\":[],\"energyLabels\":{\"urlImage\":\"https:\\/\\/visuel3d-secure.peugeot.com\\/v3dcentral\\/CO2Class\\/de-AT\\/Rollover\\/C.gif\"},\"financialProfile\":{\"id\":\"P\",\"type\":\"Private\"},\"leasing\":null,\"leaser\":null,\"userProfile\":null,\"subSubChannelAndTco\":{\"eotpCode\":null,\"operationCode\":null,\"channelCode\":null,\"subChannelCode\":null,\"subSubChannelCode\":null,\"tcoCode\":\"(1\",\"ccbCode\":\"\",\"promoCode\":\"string\"},\"termsAndConditions\":null,\"consents\":null,\"totalOptions\":null,\"vehiclePrice\":null,\"vehicleUsage\":null,\"onBoardDoc\":false,\"concludedContract\":null,\"finalPriceWoTradeIn\":null,\"finalPriceWithTradeIn\":{\"withVAT\":0,\"withVATDeduction\":0,\"withTaxesAndFees\":0,\"withTaxesDeductionsAndFees\":0,\"withoutTaxesAndFees\":0},\"finalPriceWithScrapping\":{\"withVAT\":0,\"withVATDeduction\":0,\"withTaxesAndFees\":0,\"withTaxesDeductionsAndFees\":0,\"withoutTaxesAndFees\":0},\"isFirstBasketLoading\":null,\"confirmationOrderUrls\":null,\"orderConfirmationRequest\":null,\"source\":null,\"lcjWidgetData\":null,\"quantity\":null,\"isBulkOrder\":null,\"selectedTariffZone\":null,\"bulkReservation\":null,\"isBulkOrderItem\":false,\"deliveryListBulk\":null,\"cvjFlow\":null,\"dpoAddress\":null,\"backofficeFeatureFlip\":{\"tradeInLocked\":true,\"b2cB2bSwitcherHidden\":true,\"accessoriesServicesLocked\":true,\"fincoCallsHidden\":true,\"printServiceQRSectionONLINEInPDF\":null,\"printServiceQRSectionOFFLINEInPDF\":null,\"printPrivacyQRSectionOFFLINEInPDF\":null,\"printPrivacyQRSectionONLINEInPDF\":null},\"legalEntityName\":null,\"legalEntityAddress\":null,\"legalEntityEmail\":null,\"postOrderModification\":null,\"securityToken\":null,\"isSellerInvolved\":true,\"isDealerInvolved\":true,\"isCustomerInvolved\":null,\"bmsTeam\":null,\"finalCarDefiniton\":null,\"deliveryListBulkRequest\":null,\"isPostOrderModificationInitialized\":null,\"isConfigChangeInitialized\":null,\"isReservationCancelled\":null,\"remainingReservationTime\":null,\"isManualReservation\":null,\"manualReservation\":null,\"passToSalesDate\":null,\"insuranceDataPrivacy\":null,\"isManualReservationExtended\":null}}"
    }
 }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/magento/v1/offer/f4NLSxJd1s6igkwtLtuXv7sqXf4TN0Cp/update'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header sessionId = "16978178703580296b6f1-0697-c104-5741-89c29316e0ef"
      And header brandCode = 83
      And header marketCode = 3103
      And header languageCode = 3
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method put

      Then status 200

Scenario: Retrieve quotation of an user

   Given url omniUrl
   And path '/magento/v1/offer/f4NLSxJd1s6igkwtLtuXv7sqXf4TN0Cp'

      And header sessionId = "16978178703580296b6f1-0697-c104-5741-89c29316e0ef"
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = 83
      And header marketCode = 3103
      And header languageCode = 3
      And header x-trace-id = 'karate-test-12345'
   
      When method get

      Then status 404

Scenario: Retrieve quotation of an user as admin

   Given url omniUrl
   And path '/magento/v1/offer/admin/f4NLSxJd1s6igkwtLtuXv7sqXf4TN0Cp'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = 83
      And header marketCode = 3103
      And header languageCode = 3
      And header x-trace-id = 'karate-test-12345'
   
      When method get

      Then status 404

Scenario: Retrieve count for specific user

   Given url omniUrl
   And path '/magento/v1/offer/count'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header sessionId = "16978178703580296b6f1-0697-c104-5741-89c29316e0ef"
      And header brandCode = 83
      And header marketCode = 3103
      And header languageCode = 3
      And header x-trace-id = 'karate-test-12345'
   
      When method get

      Then status 200

Scenario: Convert Guest 

      * def RequestBody = 
      """
      {
        "gigyaToken": "string",
        "sessionId": "string"
      }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/magento/v1/offer/convert-guest'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header brandCode = 83
      And header marketCode = 3103
      And header languageCode = 3
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 401

Scenario: Retrieve Gigya ID of user assigned to given quotation


   Given url omniUrl
   And path '/magento/v1/offer/gigya-id/AK4GPKfOrgGxumkihCVEp8YG5p3S9LUZ'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header brandCode = 83
      And header marketCode = 3103
      And header languageCode = 3
      And header x-trace-id = 'karate-test-12345'
   
      When method get

      Then status 200

Scenario: Update quotation of an user as an admin

      * def RequestBody = 
      """
      {
          "itemId" : 1355171,
          "sku" : "car",
          "qty" : 1,
          "name" : "car",
          "price" : 1,
          "productType" : "virtual",
          "quoteId" : "163580",
          "extensionAttributes" : {
            "itemData" : "{\"car\":{\"pdfDataCarSelector\":{\"electricCarRangeFullBattery\":\"\",\"emissionStandard\":\"EURO 6E\",\"optionals\":[{\"code\":\"S-052\",\"desc\":\"Bremsassistent\",\"isChildOfPack\":true,\"isMandatory\":false,\"isSelected\":true,\"isStandardOption\":true}],\"packs\":[{\"code\":\"string\",\"desc\":\"string\",\"isStandardOption\":true,\"isSelected\":true,\"optIncluded\":[\"string\"],\"isTrimPack\":null}],\"isWLTP\":null},\"pdfDataBasket\":null,\"pdfDataCheckout\":null,\"configurationDetails\":{\"configurationCode\":\"ZY0aofxT\",\"configuredBy\":\"1715159351786028514ba-e2a4-0199-505e-42cee1f86815\",\"preconfiguredOriginCode\":null,\"savedFor\":\"1715159351786028514ba-e2a4-0199-505e-42cee1f86815\",\"userType\":\"unlogged\",\"createdDate\":\"2024-05-10T09:51:55.074571543\",\"zoneId\":\"Europe\\/Rome\",\"guestUserSessionId\":\"1715159351786028514ba-e2a4-0199-505e-42cee1f86815\",\"vehicleConfiguration\":{\"vehicleCode\":\"83622MFG1000\",\"vehicleType\":\"MTO\",\"originalUseCodeUrl\":null,\"vehicleTypeChanged\":null,\"userJourney\":\"string\",\"isFromStock\":\"\",\"isWcwRequest\":false,\"stillManufacturable\":true,\"zipCodeRegistration\":\"string\",\"listPrice\":null,\"netPrice\":34455,\"monthlyPayment\":213.13,\"sourceCode\":\"string\",\"couponCode\":\"string\",\"isVisible\":true,\"estimatedDeliveryDate\":null,\"brand\":{\"code\":\"83\",\"desc\":\"Alfa Romeo\"},\"model\":{\"code\":\"6221\",\"desc\":\"Tonale\"},\"market\":{\"code\":\"3103\",\"desc\":\"AT\"},\"language\":{\"code\":\"3\",\"desc\":\"de\"},\"trimCode\":\"010\",\"trimName\":\"Sprint\",\"trimGroupCode\":null,\"gearboxType\":null,\"engineCode\":\"EXC1150\",\"engineName\":\"1.5 Hybrid 130 PS 96 kW TCT\",\"engineGroupCode\":null,\"fuelType\":\"38\",\"drive\":\"Doppelkupplungsgetriebe\",\"color\":\"CL-414\",\"wheels\":\"8-WFL\",\"interiors\":\"IN-070\",\"budgetFamily\":\"M\",\"marketEquipment\":\"165\",\"completeConfigurationList\":[\"A-1WY\",\"S-052\",\"S-0XR\",\"S-1CQ\",\"S-1F6\",\"S-1J8\",\"S-3RV\",\"S-508\",\"S-9S8\",\"S-LSS\",\"S-NH1\",\"S-NH4\",\"S-XA3\",\"S-XGM\",\"W-05F\",\"W-0L6\",\"W-0X9\",\"W-1RU\",\"W-62Y\",\"W-B1H\",\"C-0YB\",\"C-GX4\",\"C-GXP\",\"T-1GK\",\"T-JY2\",\"T-RCG\",\"T-RFP\",\"T-RFX\",\"T-RS3\",\"T-RS9\",\"T-RTK\",\"B-1JA\",\"B-9U7\",\"B-LNV\",\"8-WFL\",\"D-1S2\",\"D-4CS\",\"D-9Z5\",\"D-CUN\",\"D-GNK\",\"D-SCH\",\"F-1S4\",\"F-853\",\"Q-4TB\",\"M-52Y\",\"X-5K4\",\"X-CFW\",\"7-5YY\",\"CL-414\",\"IN-070\"],\"disclaimer\":{\"text\":\"string\",\"style\":{\"displaySize\":0}},\"useCod\":\"VP\",\"grBodyStyle\":\"\",\"grBodyStyleObject\":null,\"vehicleImage\":\"https:\\/\\/lb.assets.fiat.com\\/vl-picker-service\\/rest\\/getImage?wheel=WFL&fuel=38&source=omnimto&body=414&resolution=BIG&mmvs=83622MFG1000&market=3103&seat=070&view=EXT&opt=052,0XR,1CQ,1F6,1J8,3RV,508,9S8,LSS,NH1,NH4,XA3,XGM,05F,0L6,0X9,1RU,62Y,B1H,0YB,GX4,GXP,1GK,JY2,RCG,RFP,RFX,RS3,RS9,RTK,1JA,9U7,LNV,1S2,4CS,9Z5,CUN,GNK,SCH,1S4,853,4TB,52Y,5K4,CFW,5YY&trim=010&engine=EXC1150&width=1445&angle=1&model=6221&brand=83&consumer=high&height=768\",\"numberOfGears\":\"7 Gang\",\"colorName\":\"Rosso Alfa\",\"interiorName\":\"Stoff-\\/Vinylsitze schwarz\",\"cylinderCapacity\":null,\"horsePower\":\"96\",\"emissionStandard\":null,\"privacyPolicyChecks\":false,\"optionalsForNPE\":[],\"completeConfigurationListSccf\":[\"A-1WY\",\"S-052\",\"S-0XR\",\"S-1CQ\",\"S-1F6\",\"S-1J8\",\"S-3RV\",\"S-508\",\"S-9S8\",\"S-LSS\",\"S-NH1\",\"S-NH4\",\"S-XA3\",\"S-XGM\",\"W-05F\",\"W-0L6\",\"W-0X9\",\"W-1RU\",\"W-62Y\",\"W-B1H\",\"C-0YB\",\"C-GX4\",\"C-GXP\",\"T-1GK\",\"T-JY2\",\"T-RCG\",\"T-RFP\",\"T-RFX\",\"T-RS3\",\"T-RS9\",\"T-RTK\",\"B-1JA\",\"B-9U7\",\"B-LNV\",\"8-WFL\",\"D-1S2\",\"D-4CS\",\"D-9Z5\",\"D-CUN\",\"D-GNK\",\"D-SCH\",\"F-1S4\",\"F-853\",\"Q-4TB\",\"M-52Y\",\"X-5K4\",\"X-CFW\",\"7-5YY\",\"CL-414\",\"IN-070\"],\"source\":null,\"upSellOptionsList\":null,\"preConfiguredMandatoryOpt\":null,\"isPreconfiguredOffer\":null,\"isQuadricycle\":null,\"fuelTypeDesc\":null,\"lcvFiltersId\":null,\"transmission\":null,\"isStockSegregation\":null,\"vinSeg\":null,\"taxYear\":null,\"showroomVin\":null,\"crossCountry\":null,\"crossBorderSale\":null,\"vehicleFullName\":null,\"fiscalHorsePower\":null,\"maximumPowers\":null},\"deletionDate\":\"\",\"workingCO2\":\"83\",\"isManufacturable\":null,\"deletionReason\":null},\"delivery\":{\"estimatedDeliveryDate\":null,\"maxRangeDate\":null,\"minRangeDate\":null,\"vehicleType\":null,\"wishedDeliveryDate\":null,\"locationMilestoneRange\":null,\"reservationId\":\"\",\"reservationStatus\":\"\",\"omsOrderId\":\"\",\"orderedVin\":\"\",\"reservationExpiration\":\"\",\"deliveryAnticipationAccepted\":false,\"deliveryAtHome\":true,\"selectedDeliveryType\":null,\"shippingData\":{\"completeStreet\":\"\",\"zipCode\":\"\",\"city\":\"\",\"country\":\"\",\"province\":\"\"},\"deliveryAtHomeCost\":{\"amount\":\"\",\"currency\":\"\"},\"orderKey\":null,\"isDirectDelivery\":null,\"isDeliveryDateEssentialConfirmed\":null},\"dealerAdditional\":null,\"financialProduct\":{\"productKey\":null,\"creationDate\":null,\"idFinanceFile\":null,\"idQuotation\":null,\"callbackURL\":\"\",\"mofId\":\"\",\"financialProductCategory\":null,\"financialType\":\"LOA\",\"caApprovalStatus\":\"\",\"commercialCode\":null,\"financialCode\":null,\"financialProductTitle\":\"Restwertleasing\",\"description\":\"\",\"deposit\":{\"amount\":6891,\"currency\":\"\"},\"monthlyPayment\":{\"amountInclTax\":213.13,\"amountExclTax\":null,\"currency\":\"\"},\"duration\":\"24\",\"annualMileage\":\"10000\",\"globalMileage\":null,\"isBalloon\":true,\"financialSubType\":null,\"financialValidityDate\":\"\",\"isOffline\":true,\"isFromCS\":true,\"financedAmount\":null,\"firstRental\":null,\"financeSimulation\":{\"parameters\":null},\"primaryText\":null,\"creditInterest\":null,\"promotionIdList\":null,\"discountAppliedRefs\":null,\"monthlyPaymentTextWithTax\":\"string\",\"monthlyPaymentTextWithoutTax\":\"string\",\"isIndependent\":null},\"vehicleRegistration\":{\"street\":null,\"zipCode\":null,\"zoneId\":null,\"city\":null,\"country\":null,\"province\":null,\"registrationPostalCode\":null,\"geoPoint\":null,\"addressLine2\":null},\"customer\":{\"magentoUserId\":0,\"crmUserId\":null,\"customerFirstId\":null,\"gigyaUserId\":null,\"gigyaId\":\"1715159351786028514ba-e2a4-0199-505e-42cee1f86815\",\"userType\":null,\"salutation\":null,\"firstName\":null,\"lastName\":null,\"email\":null,\"language\":null,\"profession\":null,\"fiscalID\":null,\"vatNumber\":null,\"commercialName\":null,\"dateOfBirth\":null,\"cityOfBirth\":null,\"industry\":null,\"dateOfCompanyCreation\":null,\"mobile\":null,\"phone\":null,\"nationalIdType\":null,\"citizenship\":null,\"hasCustomerConfirmed\":null,\"nationalIdNumber\":null,\"provinceOfBirth\":null,\"title\":null,\"postalData\":null,\"billingData\":null,\"b2bContactData\":null,\"b2bRepresentativeData\":null},\"mop\":{\"mopId\":\"NjYzZGQyMWFlNzcxMzdjM2U4MGE1MjNk\",\"mopStatus\":null,\"incrementalOrderIdCreateDate\":null,\"isAssisted\":false,\"offerValidityDate\":\"1717192799000.392\",\"offerCreateDate\":\"1715320330000\",\"offerCreatedby\":null,\"offerLastUpdate\":null,\"offerUpdatedBy\":null,\"assistedByUserType\":null,\"frozenDate\":null,\"offerFreezeDate\":null,\"isFrozen\":false,\"invalidBasket\":null,\"isFrozenPaymentMethod\":null,\"isFrozenB2BOffer\":null},\"npeRequest\":\"{\\\"brand\\\":\\\"83\\\",\\\"color\\\":\\\"414\\\",\\\"country\\\":\\\"AT\\\",\\\"language\\\":\\\"de\\\",\\\"mandatoryOptionals\\\":null,\\\"optionals\\\":\\\"\\\",\\\"outMode\\\":\\\"S\\\",\\\"priceType\\\":\\\"eStorePrice\\\",\\\"source\\\":\\\"B2C\\\",\\\"trim\\\":\\\"070\\\",\\\"version\\\":\\\"622.MFG.1.000\\\",\\\"energy\\\":\\\"38\\\",\\\"kind\\\":\\\"VP\\\",\\\"requestFincoData\\\":true,\\\"vehicleCode\\\":\\\"83622MFG1000\\\"}\",\"payment\":null,\"discounts\":{\"b2bDelegationGrids\":null,\"fleetSalesProtocol\":null,\"couponDetails\":{\"couponCode\":\"0efc1a5c-4709-4b80-bb11-dcab99cfae8a\",\"couponApplied\":true,\"discountamount\":0,\"discountPercentage\":0,\"promoTitle\":\"\",\"validityDate\":\"\",\"couponCreationDate\":\"1715327567881.657480\",\"couponLabel\":\"STOCKSUPERCODE24\",\"couponDescription\":null,\"contractFlag\":null},\"discountsTotals\":{\"withTaxesAndFees\":0,\"withoutTaxesAndFees\":0},\"hidden\":false,\"discountsB2BOfferFrozen\":null,\"couponList\":null},\"deductions\":null,\"incentives\":null,\"taxes\":null,\"fees\":null,\"dealer\":{\"market\":\"AT\",\"mainSincom\":\"0110723\",\"sincomCode\":\"0170723\",\"siteCode\":\"000\",\"rRDICode\":\"AT0029A\",\"oIC\":\"00000191\",\"culture\":\"de\",\"deliveryAddress\":\"310379A\",\"siteGeo\":\"0000094995\",\"email\":\"office9021@eisner.at\",\"name\":\"EISNER AUTO S�DRING 332 VERTRIEB UND SERVICE GMBH\",\"phone\":\"046337238\",\"companyName\":\"\",\"vatNumber\":\"U37098804\",\"retailerAddress\":{\"street\":\"SUEDRING 332\",\"zipCode\":\"9020\",\"zoneId\":\"2\",\"city\":\"KLAGENFURT\",\"country\":\"\",\"province\":null,\"registrationPostalCode\":null,\"geoPoint\":null,\"addressLine2\":null},\"posEmail\":\"office9021@eisner.at\",\"posPhone\":\"0463319131\",\"commercialRegister\":null,\"legalEntityCode\":\"0760723\",\"isSuccursale\":null,\"logisticLocation\":null,\"isDummy\":null,\"distance\":null,\"salesmanName\":\"string\",\"attachedNVActorCode\":null,\"attachedNVActorBrand\":null,\"mainDealerSincom\":null,\"oicCode\":null,\"externalId\":null,\"dpoEmail\":null,\"privacyEmail\":null,\"phoneNumber\":null,\"openHours\":null,\"latitude\":null,\"longitude\":null,\"website\":null,\"siretNumber\":null,\"customerServiceEmail\":null,\"headOfSalesEmail\":null,\"legalForm\":null,\"capital\":null,\"rcsNumber\":null,\"tvaNumber\":null,\"tradeName\":null,\"isPrivate\":null},\"eseller\":null,\"optionals\":[{\"code\":\"S-052\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-0XR\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-1CQ\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-1F6\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-1J8\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-3RV\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-508\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-9S8\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-LSS\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-NH1\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-NH4\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-XA3\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"S-XGM\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-05F\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-0L6\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-0X9\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-1RU\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-62Y\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"W-B1H\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"C-0YB\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"C-GX4\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"C-GXP\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-1GK\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-JY2\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RCG\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RFP\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RFX\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RS3\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RS9\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"T-RTK\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":true,\"isChildOfPack\":false},{\"code\":\"B-1JA\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"B-9U7\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"B-LNV\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-1S2\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-4CS\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-9Z5\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-CUN\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-GNK\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"D-SCH\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"F-1S4\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"F-853\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":true,\"isChildOfPack\":false},{\"code\":\"Q-4TB\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"M-52Y\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":true,\"isChildOfPack\":false},{\"code\":\"X-5K4\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"X-CFW\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":false,\"isChildOfPack\":false},{\"code\":\"7-5YY\",\"isStandardOption\":true,\"isSelected\":true,\"isMandatory\":true,\"isChildOfPack\":false}],\"packs\":[],\"energyLabels\":{\"urlImage\":\"https:\\/\\/visuel3d-secure.peugeot.com\\/v3dcentral\\/CO2Class\\/de-AT\\/Rollover\\/C.gif\"},\"financialProfile\":{\"id\":\"P\",\"type\":\"Private\"},\"leasing\":null,\"leaser\":null,\"userProfile\":null,\"subSubChannelAndTco\":{\"eotpCode\":null,\"operationCode\":null,\"channelCode\":null,\"subChannelCode\":null,\"subSubChannelCode\":null,\"tcoCode\":\"(1\",\"ccbCode\":\"\",\"promoCode\":\"string\"},\"termsAndConditions\":null,\"consents\":null,\"totalOptions\":null,\"vehiclePrice\":null,\"vehicleUsage\":null,\"onBoardDoc\":false,\"concludedContract\":null,\"finalPriceWoTradeIn\":null,\"finalPriceWithTradeIn\":{\"withVAT\":0,\"withVATDeduction\":0,\"withTaxesAndFees\":0,\"withTaxesDeductionsAndFees\":0,\"withoutTaxesAndFees\":0},\"finalPriceWithScrapping\":{\"withVAT\":0,\"withVATDeduction\":0,\"withTaxesAndFees\":0,\"withTaxesDeductionsAndFees\":0,\"withoutTaxesAndFees\":0},\"isFirstBasketLoading\":null,\"confirmationOrderUrls\":null,\"orderConfirmationRequest\":null,\"source\":null,\"lcjWidgetData\":null,\"quantity\":null,\"isBulkOrder\":null,\"selectedTariffZone\":null,\"bulkReservation\":null,\"isBulkOrderItem\":false,\"deliveryListBulk\":null,\"cvjFlow\":null,\"dpoAddress\":null,\"backofficeFeatureFlip\":{\"tradeInLocked\":true,\"b2cB2bSwitcherHidden\":true,\"accessoriesServicesLocked\":true,\"fincoCallsHidden\":true,\"printServiceQRSectionONLINEInPDF\":null,\"printServiceQRSectionOFFLINEInPDF\":null,\"printPrivacyQRSectionOFFLINEInPDF\":null,\"printPrivacyQRSectionONLINEInPDF\":null},\"legalEntityName\":null,\"legalEntityAddress\":null,\"legalEntityEmail\":null,\"postOrderModification\":null,\"securityToken\":null,\"isSellerInvolved\":true,\"isDealerInvolved\":true,\"isCustomerInvolved\":null,\"bmsTeam\":null,\"finalCarDefiniton\":null,\"deliveryListBulkRequest\":null,\"isPostOrderModificationInitialized\":null,\"isConfigChangeInitialized\":null,\"isReservationCancelled\":null,\"remainingReservationTime\":null,\"isManualReservation\":null,\"manualReservation\":null,\"passToSalesDate\":null,\"insuranceDataPrivacy\":null,\"isManualReservationExtended\":null}}"
          }
      }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/magento/v1/offer/admin/f4NLSxJd1s6igkwtLtuXv7sqXf4TN0Cp/update'
    
     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header sessionId = "16978178703580296b6f1-0697-c104-5741-89c29316e0ef"
      And header brandCode = 83
      And header marketCode = 3103
      And header languageCode = 3
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method put

      Then status 200  

Scenario: set transactionId

      * def RequestBody = 
      """
      {
        "transactionId": "string",
        "quotationCode": "string"
      }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/magento/v1/offer/transaction-id'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header sessionId = "16978178703580296b6f1-0697-c104-5741-89c29316e0ef"
      And header brandCode = 83
      And header marketCode = 3103
      And header languageCode = 3
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method put

      Then status 400  

Scenario: switch dealear

      * def RequestBody = 
      """
    {
      "quotationCode": "YkOeN9ltkHQFLL48ivgKGbd7wGMz7rXr",
      "dealerId": "at-0103250.d001"
    }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/magento/v1/offer/dealer'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header sessionId = '31350989-e174-6cf7-f339-b1362b07f339'
      And header brandCode = 'CC'
      And header marketCode = 3103
      And header languageCode = 3
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method put

      Then status 400  

Scenario: clone offer of an user

      * def RequestBody = 
      """
        {
          "orderId": "",
          "mopId": "NjgwZjczNDI1MGZiZjMyOGI3MGVlZWIz"
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/magento/v1/offer/clone'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header dealerToken = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJSZXNwb25zZSI6eyJSQyI6IjAiLCJTVEFUVVMiOiJTVUNDRVNTIiwiVXNlciI6eyJBdHRyaWJ1dGVzIjp7IlVTRVJOQU1FIjoiYmUtMDAwMTU2Ny5kMTIwIiwiTUFSS0VUQ09ERSI6IjMxMDQiLCJOQVRJT04iOiJCIiwiRklSU1ROQU1FIjoiVGVzdDEyMCIsIkxBU1ROQU1FIjoiT01OaSIsIlNUQVRVUyI6IkFDVElWRSIsIkxBTkdVQUdFIjoiMjA2MCIsIkVNQUlMIjoidGVzdDEyMC5vbW5pQHN0ZWxsYW50aXMuY29tIiwiVEVMRVBIT05FIjoiIiwiRkFYIjoiIiwiQ09NUEFOWSI6IkFVVE8uSVQgU1BSTCIsIlVTRVJUWVBFIjoiREVBTEVSIiwiTUFJTlNJTkNPTSI6IjAwMDE1NjciLCJOQVRJT05pc28yIjoiQkUiLCJOQVRJT05pc28zIjoiQkVMIiwiTkFUSU9OaXNvTiI6IjA1NiJ9LCJBcHBsaWNhdGlvbnMiOlt7IkFQUExJQ0FUSU9OIjoiT01OSWNoYW5uZWwuREwiLCJQUk9GSUxFIjoiU2FsZXNNYW5hZ2VyIiwiU1RBVFVTIjoiQUNUSVZFIiwiTUFSS0VUIjoiMzEwNCJ9XSwiT0lDcyI6W3siTUFSS0VUIjoiMzEwNCIsIkNPREUiOiIwMDAwMDYzMCIsIlNUQVRFIjoiQUNUSVZFIiwiREVTQ1JJUFRJT04iOiJBVVRPLklUIFNQUkwiLCJDSVRZIjoiQlJBSU5FLUxFLUNPTVRFIiwiQUREUkVTUyI6IkNIQVVTU0VFIERFIEJSVVhFTExFUyA2NyIsIlpJUENPREUiOiI3MDkwIiwiQlJBTkRTIjoiMDAsNzcsNjYsNTciLCJYUEIiOiJGVCxKRSxBSCxGTyIsIlRZUEUiOiJTQUxFUyIsIk1BSU4iOiJOIiwiT0lDZGV0YWlscyI6W119LHsiTUFSS0VUIjoiMzEwNCIsIkNPREUiOiIwMDAwMDExOCIsIlNUQVRFIjoiQUNUSVZFIiwiREVTQ1JJUFRJT04iOiJBVVRPLklUIFNQUkwiLCJDSVRZIjoiQ1VFU01FUyIsIkFERFJFU1MiOiJSVUUgREUgTEEgUE9JUkUgRCdPUiAyMiIsIlpJUENPREUiOiI3MDMzIiwiQlJBTkRTIjoiMDAsNzcsNjYsNTcsODMiLCJYUEIiOiJGVCxBUixKRSxBSCxGTyIsIlRZUEUiOiJTQUxFUyIsIk1BSU4iOiJZIiwiT0lDZGV0YWlscyI6W3siTERBUElEIjoiTTAwMTc4MDEiLCJSUkRJIjoiQkUwMDBaQSIsIkJSQU5EIjoiQVIiLCJBTFRCUkFORCI6IjgzIiwiU0lOQ09NIjoiMDAwMjU0OSIsIlNJVEUiOiIwMDAiLCJHRU9TSVRFIjoiMDAwMDA5NzI5MiIsIk9VVExFVCI6IkJFMDAwMDEyOTcifV19XX19LCJpYXQiOjE3NTY4ODQyNDEsImV4cCI6MTc1Njk3MDY3MX0.Fd4abVoygZJdrEq6lP0QOx8Qthixr2un-hP1xyT3BS8i6LSCcUdJ-zYFwacYGGALQ8I7GV2KzI2syCelPsJVovL-80TGaFSJrt1ev6lGRr-HoqkT91LWFyPWTDp5r7I425Fdh4loon_bwboV4Ap6mWtXYfF-o68Uembw35Y1vyWnkPYygqzmZKQSYjYgVOTHq9sBwFOMlWsriZALVUbG2EtAEnfxfqSroGCd8YmHaL8aXTVbUHFL737Wc9HCwzg_WtcRty9BSTQgtmbwMxidnc-c8q28QtWSLpQjO4BXj9fQ66GQ-65nAfAR-72fHrT3-b2CLOyzALtIAwLxLJANHA'
      And header brandCode = 83
      And header marketCode = 3104
      And header languageCode = 2
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 401

Scenario: Retrieve models


   Given url omniUrl
   And path '/magento/v1/offer/models'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'


      And header dealerToken = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJSZXNwb25zZSI6eyJSQyI6IjAiLCJTVEFUVVMiOiJTVUNDRVNTIiwiVXNlciI6eyJBdHRyaWJ1dGVzIjp7IlVTRVJOQU1FIjoiYmUtMDAwMTU2Ny5kMTIwIiwiTUFSS0VUQ09ERSI6IjMxMDQiLCJOQVRJT04iOiJCIiwiRklSU1ROQU1FIjoiVGVzdDEyMCIsIkxBU1ROQU1FIjoiT01OaSIsIlNUQVRVUyI6IkFDVElWRSIsIkxBTkdVQUdFIjoiMjA2MCIsIkVNQUlMIjoidGVzdDEyMC5vbW5pQHN0ZWxsYW50aXMuY29tIiwiVEVMRVBIT05FIjoiIiwiRkFYIjoiIiwiQ09NUEFOWSI6IkFVVE8uSVQgU1BSTCIsIlVTRVJUWVBFIjoiREVBTEVSIiwiTUFJTlNJTkNPTSI6IjAwMDE1NjciLCJOQVRJT05pc28yIjoiQkUiLCJOQVRJT05pc28zIjoiQkVMIiwiTkFUSU9OaXNvTiI6IjA1NiJ9LCJBcHBsaWNhdGlvbnMiOlt7IkFQUExJQ0FUSU9OIjoiT01OSWNoYW5uZWwuREwiLCJQUk9GSUxFIjoiU2FsZXNNYW5hZ2VyIiwiU1RBVFVTIjoiQUNUSVZFIiwiTUFSS0VUIjoiMzEwNCJ9XSwiT0lDcyI6W3siTUFSS0VUIjoiMzEwNCIsIkNPREUiOiIwMDAwMDYzMCIsIlNUQVRFIjoiQUNUSVZFIiwiREVTQ1JJUFRJT04iOiJBVVRPLklUIFNQUkwiLCJDSVRZIjoiQlJBSU5FLUxFLUNPTVRFIiwiQUREUkVTUyI6IkNIQVVTU0VFIERFIEJSVVhFTExFUyA2NyIsIlpJUENPREUiOiI3MDkwIiwiQlJBTkRTIjoiMDAsNzcsNjYsNTciLCJYUEIiOiJGVCxKRSxBSCxGTyIsIlRZUEUiOiJTQUxFUyIsIk1BSU4iOiJOIiwiT0lDZGV0YWlscyI6W119LHsiTUFSS0VUIjoiMzEwNCIsIkNPREUiOiIwMDAwMDExOCIsIlNUQVRFIjoiQUNUSVZFIiwiREVTQ1JJUFRJT04iOiJBVVRPLklUIFNQUkwiLCJDSVRZIjoiQ1VFU01FUyIsIkFERFJFU1MiOiJSVUUgREUgTEEgUE9JUkUgRCdPUiAyMiIsIlpJUENPREUiOiI3MDMzIiwiQlJBTkRTIjoiMDAsNzcsNjYsNTcsODMiLCJYUEIiOiJGVCxBUixKRSxBSCxGTyIsIlRZUEUiOiJTQUxFUyIsIk1BSU4iOiJZIiwiT0lDZGV0YWlscyI6W3siTERBUElEIjoiTTAwMTc4MDEiLCJSUkRJIjoiQkUwMDBaQSIsIkJSQU5EIjoiQVIiLCJBTFRCUkFORCI6IjgzIiwiU0lOQ09NIjoiMDAwMjU0OSIsIlNJVEUiOiIwMDAiLCJHRU9TSVRFIjoiMDAwMDA5NzI5MiIsIk9VVExFVCI6IkJFMDAwMDEyOTcifV19XX19LCJpYXQiOjE3NTY4ODQyNDEsImV4cCI6MTc1Njk3MDY3MX0.Fd4abVoygZJdrEq6lP0QOx8Qthixr2un-hP1xyT3BS8i6LSCcUdJ-zYFwacYGGALQ8I7GV2KzI2syCelPsJVovL-80TGaFSJrt1ev6lGRr-HoqkT91LWFyPWTDp5r7I425Fdh4loon_bwboV4Ap6mWtXYfF-o68Uembw35Y1vyWnkPYygqzmZKQSYjYgVOTHq9sBwFOMlWsriZALVUbG2EtAEnfxfqSroGCd8YmHaL8aXTVbUHFL737Wc9HCwzg_WtcRty9BSTQgtmbwMxidnc-c8q28QtWSLpQjO4BXj9fQ66GQ-65nAfAR-72fHrT3-b2CLOyzALtIAwLxLJANHA'
      And header brandCode = 83
      And header marketCode = 3104
      And header languageCode = 2
      And header x-trace-id = 'karate-test-12345'
   
      When method get

      Then status 401