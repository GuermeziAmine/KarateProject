Feature: OMNI Promo  Service Logic

    Background:
        * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net' + '/dev'
        * def authResult = call read('auth.feature')
        * def token = authResult.authToken

Scenario: Extend Reservation 

      * def RequestBody = 
      """
            {
            "keyReservations": [
                {
                "key": "string",
                "reservationId": "string"
                }
            ],
            "reservationexpirationtimestamp": "2027-07-14T16:25:14",
            "extensionType": "order_Financing_Online",
            "financeType": "string",
            "customerType": "string",
            "journeyType": "string",
            "paymentMethod": "string",
            "isBulk": true,
            "isChild": true
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/scl/v1/order/reservation-extension'

     
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
Scenario: Calculate the parameters for extending a reservation 

      * def RequestBody = 
      """
            {
            "reservationexpirationtimestamp": "string",
            "extensionType": "string",
            "financeType": "string",
            "customerType": "string",
            "journeyType": "string",
            "paymentMethod": "string",
            "market": "string",
            "brand": "string"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/scl/v1/order/calculate-reservation-extension'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404
Scenario: Submit final confirmation for a specific order 

      * def RequestBody = 
      """
        {
        "mopid": "string",
        "typeofcompany": "str",
        "market": "stri",
        "country": "st",
        "orderformid": "string",
        "bulkflag": "string",
        "fathermopid": "string",
        "product": {
            "psa": {
            "kindofproduct": "string",
            "commercialbrand": "s",
            "productline": "st",
            "bodystyle": "st",
            "trimlevel": "s",
            "engine": "st",
            "gearbox": "s",
            "designbase": "st",
            "customerstarget": "st",
            "majorindex": "s",
            "minorindex": "string",
            "exteriorcolor": "stri",
            "interiorcolor": "stri",
            "optioncodelist": [
                {
                "optioncodeelement": "string"
                }
            ]
            },
            "fca": {
            "brand": "st",
            "modelcode": "str",
            "version": "str",
            "serie": "s",
            "drive": "string",
            "budgetfamily": "s",
            "marketequipement": "str",
            "plantequipement": "st",
            "specialequipment": "stri",
            "exteriorcolor": "stri",
            "interiorcolor": "stri",
            "optioncodelist": [
                {
                "optioncodeelement": "string"
                }
            ]
            }
        },
        "wisheddeliverydate": "string",
        "agreeddeliverydate": "string",
        "earlydeliveryflag": "s",
        "finalordering": "s",
        "reservationid": "string",
        "vin": "string",
        "ordernumber": "string",
        "omsorderid": "string",
        "dealerid": "string",
        "deliveryadress": "string",
        "quantitiesorders": 9999,
        "gridmarket": "stri",
        "saletype": "st",
        "productvalidatedate": "string",
        "conversionorderno": "string",
        "leadconversiontime": 999,
        "converteraddresscode": "string",
        "conversiondescription": "string",
        "conversionprice": 0,
        "conversionoptioncodelist": [
            {
            "conversionoption": "string",
            "conversionprice": 0
            }
        ],
        "convertername": "string",
        "personalizationflag": "Y",
        "personalizationleadtime": 9999,
        "flagavailability": "s",
        "remunerationdueflag": "s",
        "ordermodificationflag": "s",
        "nrmflag": "s",
        "directshipmentflag": "N",
        "manufacturableflag": "Y",
        "customerdataxp": {
            "brand": "st",
            "country": "st",
            "language": "st",
            "applicationId": "stri",
            "messageid": "string",
            "deliveryaddresscode": "string",
            "commercialtitlelcdv": "string",
            "commercialtitleequipments": "string",
            "carnumber": "string",
            "vehiclenumber": "string",
            "exacttitle": "strin",
            "desireddeliverydate": "2026-04-06",
            "earlydeliveryflag": "s",
            "orderingaccount": "string",
            "beneficiaryofthesaleaccount": "string",
            "agreedproductiondate": "2026-04-06",
            "orderformnumber": "string",
            "orderformcreationdate": "2026-04-06",
            "applicantaccount": "string",
            "saleschannel": "string",
            "typeofclient": "string",
            "typeoffinancing": "string",
            "broker": "string",
            "fleetnumber": "string",
            "loyaltyprogram": 0,
            "originofccf": "stri",
            "sellercode": "str",
            "comment": "string",
            "paymentmethod": "string",
            "distributionchannel": "string",
            "subdistributionchannel": "string",
            "subsubdistributionchannel": "string",
            "customerjourney": "s",
            "deliveryaccount": "string",
            "accountbenefitingfromthesale": "string",
            "codistributionchannel": "string",
            "cosubdistributionchannel": "string",
            "cossubdistributionchannel": "string",
            "mopid": "string",
            "privateowner": {
            "civility": "s",
            "lastname": "string",
            "firstname": "string",
            "addressline 1": "string",
            "addressline 2": "string",
            "addresstown": "string",
            "addresspostcode": "string",
            "addressprovince": "string",
            "addresscountry": "st",
            "nationalId": "string",
            "birthdate": "2026-04-06",
            "language": "st",
            "occupation": "st",
            "privatephonenumber": "string",
            "businessphonenumber": "string",
            "mobilephonenumber": "string",
            "emailaddress": "string",
            "emailconsent": true
            },
            "companyowner": {
            "companyname": "string",
            "parentcompanyname": "string",
            "nationalid": "string",
            "companyactivity": "string",
            "companyaddressline1": "string",
            "companyaddressline2": "string",
            "companyaddresstown": "string",
            "companyaddresspostcode": "string",
            "companyaddressprovince": "string",
            "companyaddresscountry": "st",
            "contactcivility": "s",
            "contactlastname": "string",
            "contactfirstname": "string",
            "contactbusinessphonenumber1": "string",
            "contactbusinessphonenumber2": "string",
            "contactmobilephone": "string",
            "contactemailaddress": "string",
            "emailconsent": true
            },
            "privatetenant": {
            "civility": "s",
            "lastname": "string",
            "firstname": "string",
            "addressline1": "string",
            "addressline2": "string",
            "addresstown": "string",
            "addresspostcode": "string",
            "addressprovince": "string",
            "addresscountry": "st",
            "nationalid": "string",
            "birthdate": "2026-04-06",
            "language": "st",
            "occupation": "st",
            "privatephonenumber": "string",
            "businessphonenumber": "string",
            "mobilephonenumber": "string",
            "emailaddress": "string",
            "emailconsent": true
            },
            "companytenant": {
            "companyname": "string",
            "parentcompanyname": "string",
            "nationalid": "string",
            "companyactivity": "string",
            "companyaddressline1": "string",
            "companyaddressline2": "string",
            "companyaddresstown": "string",
            "companyaddresspostcode": "string",
            "companyaddressprovince": "string",
            "companyaddresscountry": "st",
            "contactcivility": "s",
            "contactlastname": "string",
            "contactfirstname": "string",
            "contactbusinessphonenumber1": "string",
            "contactbusinessphonenumber2": "string",
            "contactmobilephone": "string",
            "contactemailaddress": "string",
            "emailconsent": true
            },
            "driver": {
            "civility": "s",
            "lastname": "string",
            "firstname": "string",
            "addressline1": "string",
            "addressline2": "string",
            "addresstown": "string",
            "addresspostcode": "string",
            "addressprovince": "string",
            "addresscountry": "st",
            "nationalid": "string",
            "birthdate": "2026-04-06",
            "language": "st",
            "occupation": "st",
            "privatephonenumber": "string",
            "businessphonenumber": "string",
            "mobilephonenumber": "string",
            "emailaddress": "string",
            "emailconsent": true
            },
            "conditions": {
            "discount": 0,
            "promoCode1": "string",
            "promoCode2": "string",
            "opePromo1": "string",
            "opePromo2": "string",
            "opePromo3": "string",
            "opePromo4": "string",
            "opePromo5": "string",
            "fundedBattery": true,
            "protocolNumber": "string",
            "protocolLineNumber": "string",
            "fleetsales": {
                "canalVenteCustomerFirst": "string",
                "identifiantCustomerFirst": "string",
                "avantages": 0,
                "prixHT": 0,
                "prixTTC": 0,
                "prixNetHT": 0,
                "prixNetTTC": 0,
                "remiseGlobale": 0,
                "remiseB2B": 0,
                "remiseMontantHTB2B": 0,
                "remiseMontantTTCB2B": 0,
                "remiseMontantHTGlobale": 0,
                "remiseMontantTTCGlobale": 0,
                "identifiantProtocole": "string",
                "typeAcquisition": 0,
                "societeFinancement": "string",
                "identifiantFlotte": "string",
                "numeroCommandeLeaser": "string",
                "contremarque": "string",
                "eotpCode": "string",
                "operationCode": "string",
                "discountLabel": "string",
                "discounts": [
                {
                    "code": "string",
                    "discountB2B": 0,
                    "originalPriceWithVAT": 0,
                    "originalPriceWithoutVAT": 0,
                    "discountAmountWithVAT": 0,
                    "discountAmountWithoutVAT": 0
                }
                ]
            },
            "paymentTerms": {
                "customerName": "string",
                "vatId": "string",
                "nationalId": "string",
                "paymentLeadTime": 0,
                "paymentLeadTimeType": "string",
                "label": "string"
            }
            },
            "tradeIn": {
            "type": 0,
            "brand": "string",
            "model": "string",
            "year": 0,
            "vin": "string",
            "owner": 0
            },
            "personalization": {
            "personalizationleadtime": 0,
            "personalizationflag": "string"
            },
            "convertool": {
            "number": "string",
            "address": "string",
            "name": "string",
            "label": "string",
            "duration": 0,
            "amount": 0,
            "cost": 0,
            "options": [
                {
                "label": "string",
                "amount": 0,
                "cost": 0
                }
            ]
            },
            "nrm": {
            "valorization": [
                {
                "type": "V",
                "code": "string",
                "label": "string",
                "amount": 0
                }
            ],
            "discounts": [
                {
                "code": "string",
                "eotp": "string",
                "label": "string",
                "amount": 0,
                "incentivetype": "string",
                "operationcode": "string"
                }
            ],
            "outlays": [
                {
                "code": "string",
                "label": "string",
                "amount": 0
                }
            ],
            "service": [
                {
                "code": "string",
                "label": "string",
                "amount": 0
                }
            ],
            "totalamountexcltaxes": 0,
            "totalamountincltaxes": 0
            },
            "nrmflag": "s",
            "leaserflag": "s",
            "leaserleadtime": 0,
            "agreeddeliverydate": "2026-04-06",
            "agreedarrivalatdealershipdate": "2026-04-06",
            "agreednsccompounddate": "2026-04-06"
        },
        "customerData": {
            "ocf": {
            "ordernumber": "string",
            "dealerid": "string",
            "market": "stri",
            "ocfcontractnumber": "string",
            "paymenttype": "s",
            "contractdate": "string",
            "customerid": "string",
            "customercodeccb": "string",
            "typeofclientcode": "st",
            "clientcategory": "s",
            "confidentialityflag": "s",
            "taxcodeoftheclient": "string",
            "vatnumber": "string",
            "surname": "string",
            "firstname": "string",
            "honoraytitle": "string",
            "typeofstreet": "string",
            "address1": "string",
            "address2": "string",
            "address3": "string",
            "addressnumber": "string",
            "zipcode": "string",
            "city": "string",
            "district": "stri",
            "country": "str",
            "homeprefixtelephonenumber": "strin",
            "hometelephonenumber": "string",
            "officeprefixtelephonenumber": "strin",
            "Officetelephonenumber": "string",
            "faxprefixtelephonenumber": "strin",
            "faxtelephonenumber": "string",
            "language": "s",
            "typeofrelation": "s",
            "model": "str",
            "version": "str",
            "series": "s",
            "forecastdeliverydate": "string",
            "ocfsubdealer": "string",
            "ocfvendor": "string",
            "ordersalestype": "st",
            "remunerationdueflag": "s",
            "originocf": "s",
            "mobileprefixtelephonenumber": "strin",
            "mobiletelephonenumber": "string",
            "mailaddress": "string",
            "charterorder": "string",
            "userid": "string",
            "factoryorderid": "string",
            "pcocfnumber": "string",
            "chassis": "string",
            "registrationdateusedvehicle": "string",
            "fueltypeusedvehicle": "s",
            "ccenginecapacityusedvehicle": "stri",
            "licenseplateofusedvehicle": "string",
            "typeofclientcode2": "st",
            "codificationtype": "s",
            "customercodeccb2": "string",
            "salestypeccf": "s",
            "purchasetype": "s",
            "initiativecode": "string",
            "reasoncode": "s"
            }
        }
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/scl/v1/order/confirmation-submit/123'

     
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
Scenario: Update confirmation details for an existing order 

      * def RequestBody = 
      """
        {
                    "mopid": "NjUwOTllY2NjMGI2NzUzOTE3NWI3ZGM4",
                    "typeofcompany": "FEE",
                    "market": "3104",
                    "country": "LU",
                    "product": {
                        "fca": {
                    "brand": "83",
                    "modelcode": "620",
                    "version": "JA5",
                    "serie": "4",
                    "drive": 1,
                    "budgetfamily": "B",
                    "marketequipement": "000",
                    "planequipement": "01",
                    "specialequipment": "0000",
                    "exteriorcolor": "035",
                    "interiorcolor": "557",
                    "optioncodelist": [
                        {
                            "optioncodeelement": "070"
                        },
                        {
                            "optioncodeelement": "136"
                        },
                        {
                            "optioncodeelement": "3CX"
                        },
                        {
                            "optioncodeelement": "452"
                        },
                        {
                            "optioncodeelement": "4TA"
                        },
                        {
                            "optioncodeelement": "5CE"
                        },
                        {
                            "optioncodeelement": "5KA"
                        },
                        {
                            "optioncodeelement": "6HQ"
                        },
                        {
                            "optioncodeelement": "788"
                        },
                        {
                            "optioncodeelement": "7XF"
                        },
                        {
                            "optioncodeelement": "CDE"
                        },
                        {
                            "optioncodeelement": "NHS"
                        },
                        {
                            "optioncodeelement": "RDG"
                        },
                        {
                            "optioncodeelement": "RTK"
                        }
                    ]
                }
            },
            "wisheddeliverydate": "20230926",
            "agreeddeliverydate": "20231017",
            "earlydeliveryflag": "Y",
            "reservation": "Y",
            "reservationid": "00479CC3A",
            "reservationexpirationtimestamp": "2023-09-19T16:17:29",
            "dealerid": "0002549",
            "deliveryadress": "3104252",
            "quantitiesorders": "1",
            "gridmarket": "3104",
            "saletype": "V ",
            "productvalidatedate": "231114",
            "leadconversiontime": 0,
            "conversionoptioncodelist": [],
            "personalizationflag": "N",
            "personalizationleadtime": 0,
            "remunerationdueflag": "0",
            "nrmflag": "Y",
            "customerData": {
                "ocf": {
                    "ordernumber": "00001114",
                    "dealerid": "0002549",
                    "market": "3104",
                    "paymenttype": "C",
                    "customercodeccb": "00003",
                    "typeofclientcode": "1",
                    "clientcategory": "0",
                    "confidentialityflag": "0",
                    "surname": "test",
                    "firstname": "m",
                    "honoraytitle": "MR",
                    "typeofstreet": "street",
                    "address1": "Via Varallo 20",
                    "zipcode": "10100",
                    "city": "Turin",
                    "country": "BE",
                    "homeprefixtelephonenumber": "+32",
                    "hometelephonenumber": "12345678",
                    "language": "2",
                    "model": "620",
                    "version": "JA5",
                    "series": "4",
                    "forecastdeliverydate": "2023-09-26",
                    "remunerationdueflag": "0",
                    "userid": "0002549E"
                }
            }
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/scl/v1/order/confirmation/123'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = '83'
      And header marketCode = '3104'
      And header languageCode = '2'
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Cancel Order via ID

      * def RequestBody = 
      """
        {
        "omsorderid": "string",
        "fcocancellation": "N",
        "reasoncode": "str",
        "cancellationinstruction": "string"
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/scl/v1/order/cancellation/123'

     
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

Scenario: Preform the order Confirmation in queue 

      * def RequestBody = 
      """
        {
             "orderMagentoId": "87000000141"
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/scl/v1/order/confirmation-queue'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = 'CC'
      And header marketCode = '3104'
      And header languageCode = '2'
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Cancel a vehicle reservation in OMS

      * def RequestBody = 
      """
          {
            "keyReservations": [
                {
                "key": "string",
                "reservationId": "string"
                }
            ],
            "unreservation": "N",
            "isBulk": true
         }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/scl/v1/order/reservation/cancellation'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = 'CC'
      And header marketCode = '3104'
      And header languageCode = '2'
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 404

Scenario: Create a new  reservation in OMS

      * def RequestBody = 
      """
            {
                "agreeddeliverydate": "20230915",
                "country": "AT",
                "dealerid": "AT08020",
                "deliveryadress": "AT0802001",
                "exteriorcolor": "P0WP",
                "gridmarket": "",
                "interiorcolor": "WNFX",
                "key": "iet02bxi3",
                "leadconversiontime": 0,
                "market": null,
                "optioncodelist": [
                    {
                        "optioncodeelement": "DLA05CP"
                    },
                    {
                        "optioncodeelement": "DLW02CP"
                    },
                    {
                        "optioncodeelement": "DLZ02CP"
                    },
                    {
                        "optioncodeelement": "DTC07CP"
                    },
                    {
                        "optioncodeelement": "DZJCFCP"
                    }
                ],
                "personalizationflag": "N",
                "product": {
                    "psa": {
                        "bodystyle": "A5",
                        "commercialbrand": "G",
                        "customerstarget": "A0",
                        "designbase": "B0",
                        "engine": "R7",
                        "gearbox": "A",
                        "kindofproduct": "1",
                        "majorindex": "C",
                        "minorindex": "0",
                        "productline": "O5",
                        "trimlevel": "Z"
                    }
                },
                "productvalidatedate": "230908",
                "quantitiesorders": "1",
                "reservation": "Y",
                "reservationexpirationtimestamp": "2027-07-14T16:25:14",
                "saletype": "V ",
                "typeofcompany": "PSA",
                "wisheddeliverydate": "20230825"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/scl/v1/order/reservation'
      And param journeyType = "offline"

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header market = 'AT'
      And header brandCode = '83'
      And header marketCode = '3104'
      And header languageCode = '2'
      And header x-trace-id = 'karate-test-12345' 
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 400

Scenario: Returns the maximum estimate for the chosen vehicle configuration

      * def RequestBody = 
      """
            {
            "company": "FCA",
            "market": "3103",
            "country": "IT",
            "drive": "string",
            "budgetFamily": "string",
            "vehicleList": [
                "string"
            ]
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/scl/v1/car-selector/estimate-delivery-date/default'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'


      And header x-trace-id = 'karate-test-12345' 
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Returns the maximum estimate for the chosen vehicle configuration configured

      * def RequestBody = 
      """
        {
            "key": "nzproAqi",
            "typeOfCompany": "PSA",
            "market": null,
            "country": "AT",
            "product": {
                "psa": {
                    "kindOfProduct": "1",
                    "commercialBrand": "S",
                    "productLine": "D4",
                    "bodyStyle": "A5",
                    "trimLevel": "L",
                    "engine": "P4",
                    "gearbox": "1",
                    "designBase": "B0",
                    "customersTarget": "A0",
                    "majorIndex": "2",
                    "minorIndex": "0",
                    "exteriorColor": "M09V",
                    "interiorColor": "B8FX",
                    "optionCodeList": [{}]
                }
            },
            "vin": null,
            "customerWishedDate": "",
            "agreedForEarlyDelivery": false,
            "dealer": "004640Q",
            "deliveryAdress": "002331C01",
            "gridMarket": "0",
            "quantitiesOrders": 1,
            "saleType": "V ",
            "leadConversionTime": 0,
            "personalizationFlag": "N",
            "personalizationLeadTime": 0
        }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/scl/v1/car-selector/estimate-delivery-date/configured'
    

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'


      And header x-trace-id = 'karate-test-12345' 
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 500