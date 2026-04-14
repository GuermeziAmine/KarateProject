Feature: OMNI CRM Service Logic
     
     Background:
   
        * print 'Token utilisé pour ce test :', token

Scenario:  searches customer entities based on a set of filter criteria

    * def RequestBody = 
      """ 
        {
        "extendedSearch": "Alexis",
        "pageSize": 10,
        "dealerId": "0103250",
        "country": "AT"
        }
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/customer/v1/customer-first/find'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'

      And header clientType = 'dealer'
      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post
    
      Then status 401 
Scenario:   creates a customer

    * def RequestBody = 
      """ 
        {

            "account": {
                "nonTrusted": true,
                "activityTypeId": "string",
                "billingAddressComplement": "string",
                "billingCity": "string",
                "billingCountry": "string",
                "billingFloor": "string",
                "billingGPSgeocoding": "string",
                "billingIrisCode": "string",
                "billingNPAI": true,
                "billingPostalCode": "string",
                "billingState": "string",
                "billingStreet": "string",
                "birthCity": "string",
                "brand": "string",
                "carContructorStaff": "string",
                "clientLanguage": "ES",
                "contactCountry": "string",
                "corporateName": "string",
                "country": "string",
                "countryLandlinePersonal": "string",
                "countryLandlineProfessional": "string",
                "countryMobilePersonal": "string",
                "countryPhone": "string",
                "csp": "string",
                "dayOfBirth": "string",
                "deceased": true,
                "dunsNumber": "string",
                "email": "string",
                "emailChecked": "string",
                "fax": "string",
                "firstName": "string",
                "intraVATnumber": "string",
                "isActive": true,
                "landlinePersonalTelephone": "string",
                "landlineProfessionalTelephone": "string",
                "lastContactDate": "2026-04-05",
                "lastName": "string",
                "maidenName": "string",
                "mailingAddressComplement": "string",
                "mailingFloor": "string",
                "mailingGPSgeocoding": "string",
                "mailingIrisCode": "string",
                "mailingNPAI": true,
                "maritalStatus": "string",
                "mobilePersonalTelephone": "string",
                "mobileProfessionalTelephone": "string",
                "nationalId": "string",
                "nationalId2": "string",
                "nationalId2ProviderCity": "string",
                "nationalId2Type": "string",
                "nationalId2ValidityEndDate": "2026-04-05",
                "nationalIdType": "string",
                "personEmail": "string",
                "personalEmail": "string",
                "personalEmailChecked": "string",
                "personBirthdate": "2026-04-05",
                "personMailingCity": "string",
                "personMailingCountry": "string",
                "personMailingPostalCode": "string",
                "personMailingState": "string",
                "personMailingStreet": "string",
                "phone": "string",
                "profession": "string",
                "professional": true,
                "professionalEmail": "string",
                "professionalEmailChecked": "string",
                "salutation": "string",
                "shippingAddressComplement": "string",
                "shippingCity": "string",
                "shippingCountry": "string",
                "shippingFloor": "string",
                "shippingGPSgeocoding": "string",
                "shippingIrisCode": "string",
                "shippingNPAI": true,
                "shippingPostalCode": "string",
                "shippingState": "string",
                "shippingStreet": "string",
                "standardizedCompanyName": "string",
                "standardizedCorporateName": "string",
                "standardizedFirstName": "string",
                "standardizedLastName": "string",
                "title": "string",
                "externalId": "string",
                "system": "string",
                "name": "string",
                "fiscalID": "string",
                "nonUniqueFiscalId": "string",
                "dealerId": "string",
                "accountCountry": "string"
            },
            "contact": {
                "accountId": "string",
                "accountPrincipalContact": true,
                "ageRange": "string",
                "birthdate": "2026-04-05",
                "clientLanguage": "ES",
                "contactCountry": "string",
                "countryMobileProfessional": "string",
                "csp": "string",
                "countryLandlineProfessional": "string",
                "currencyIsoCode": "string",
                "dayOfBirth": "string",
                "deceased": true,
                "department": "string",
                "email": "string",
                "fax": "string",
                "firstName": "string",
                "isActive": true,
                "jobTitle": "string",
                "landlinePersonalTelephone": "string",
                "landlineProfessionalTelephone": "string",
                "lastContactDate": "2026-04-05",
                "lastName": "string",
                "maidenName": "string",
                "mailingAddressComplement": "string",
                "mailingCity": "string",
                "mailingCountry": "string",
                "mailingGPSgeocoding": "string",
                "mailingNPAI": true,
                "mailingPostalCode": "string",
                "mailingState": "string",
                "mailingStreet": "string",
                "maritalStatus": "string",
                "mobilePersonalTelephone": "string",
                "mobileProfessionalTelephone": "string",
                "nationalId": "string",
                "nationalIdType": "string",
                "nationalId2": "string",
                "nationalId2Type": "string",
                "personalEmail": "string",
                "personalEmailValidityStatus": "string",
                "phone": "string",
                "preferredChannel": "string",
                "profession": "string",
                "professionalEmail": "string",
                "professionalEmailValidityStatus": "string",
                "psaWorker": true,
                "salutation": "string",
                "singleName": "string",
                "standardizedFirstName": "string",
                "standardizedLastName": "string",
                "title": "string",
                "dealerId": "string"
            }
}
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/customer/v1/customer-first/save'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'

      And header clientType = 'dealer'
      And header customerType = ' Account_B2B'
      And header context = ' orderform'
      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post
    
      Then status 500

Scenario:  retrieves one customer entity based Customer Id

    * def RequestBody = 
      """ 
        {
        "id": "63973dbf9411d35bb8dedb63",
        "dealerId": "0103250",
        "country": "AT"
        }
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/customer/v1/customer-first/information'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'

      And header customerType  = 'accountCFirstId'
      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post
    
      Then status 401 

Scenario:  update a customer record based on its given id

    * def RequestBody = 
      """ 
        {
        "account": {
            "nonTrusted": true,
            "activityTypeId": "string",
            "billingAddressComplement": "string",
            "billingCity": "string",
            "billingCountry": "string",
            "billingFloor": "string",
            "billingGPSgeocoding": "string",
            "billingIrisCode": "string",
            "billingNPAI": true,
            "billingPostalCode": "string",
            "billingState": "string",
            "billingStreet": "string",
            "birthCity": "string",
            "brand": "string",
            "carContructorStaff": "string",
            "clientLanguage": "ES",
            "contactCountry": "string",
            "corporateName": "string",
            "country": "string",
            "countryLandlinePersonal": "string",
            "countryMobilePersonal": "string",
            "countryPhone": "string",
            "csp": "string",
            "dayOfBirth": "string",
            "deceased": true,
            "dunsNumber": "string",
            "email": "string",
            "gigyaId": "string",
            "emailChecked": "string",
            "fax": "string",
            "firstName": "string",
            "intraVATnumber": "string",
            "isActive": true,
            "landlinePersonalTelephone": "string",
            "landlineProfessionalTelephone": "string",
            "lastContactDate": "2026-04-05",
            "lastName": "string",
            "maidenName": "string",
            "mailingAddressComplement": "string",
            "mailingFloor": "string",
            "mailingGPSgeocoding": "string",
            "mailingIrisCode": "string",
            "mailingNPAI": true,
            "maritalStatus": "string",
            "mobilePersonalTelephone": "string",
            "mobileProfessionalTelephone": "string",
            "nationalId": "string",
            "nationalId2": "string",
            "nationalId2ProviderCity": "string",
            "nationalId2Type": "string",
            "nationalId2ValidityEndDate": "2026-04-05",
            "nationalIdType": "string",
            "personEmail": "string",
            "personalEmail": "string",
            "personalEmailChecked": "string",
            "personBirthdate": "2026-04-05",
            "personMailingCity": "string",
            "personMailingCountry": "string",
            "personMailingPostalCode": "string",
            "personMailingState": "string",
            "personMailingStreet": "string",
            "phone": "string",
            "profession": "string",
            "professional": true,
            "professionalEmail": "string",
            "professionalEmailChecked": "string",
            "salutation": "string",
            "shippingAddressComplement": "string",
            "shippingCity": "string",
            "shippingCountry": "string",
            "shippingFloor": "string",
            "shippingGPSgeocoding": "string",
            "shippingIrisCode": "string",
            "shippingNPAI": true,
            "shippingPostalCode": "string",
            "shippingState": "string",
            "shippingStreet": "string",
            "standardizedCompanyName": "string",
            "standardizedCorporateName": "string",
            "standardizedFirstName": "string",
            "standardizedLastName": "string",
            "title": "string",
            "externalId": "string",
            "system": "string",
            "name": "string",
            "fiscalID": "string",
            "nonUniqueFiscalId": "string",
            "accountCountry": "string"
        },
        "contact": {
            "accountPrincipalContact": true,
            "ageRange": "string",
            "birthdate": "2026-04-05",
            "clientLanguage": "ES",
            "contactCountry": "string",
            "countryMobileProfessional": "string",
            "countryLandlineProfessional": "string",
            "countryPhone": "string",
            "externalId": "string",
            "system": "string",
            "csp": "string",
            "currencyIsoCode": "string",
            "dayOfBirth": "string",
            "deceased": true,
            "department": "string",
            "email": "string",
            "gigyaId": "string",
            "fax": "string",
            "firstName": "string",
            "isActive": true,
            "jobTitle": "string",
            "landlinePersonalTelephone": "string",
            "landlineProfessionalTelephone": "string",
            "lastContactDate": "2026-04-05",
            "lastName": "string",
            "maidenName": "string",
            "mailingAddressComplement": "string",
            "mailingCity": "string",
            "mailingCountry": "string",
            "mailingGPSgeocoding": "string",
            "mailingNPAI": true,
            "mailingPostalCode": "string",
            "mailingState": "string",
            "mailingStreet": "string",
            "maritalStatus": "string",
            "mobilePersonalTelephone": "string",
            "mobileProfessionalTelephone": "string",
            "nationalId": "string",
            "nationalIdType": "string",
            "nationalId2": "string",
            "nationalId2Type": "string",
            "personalEmail": "string",
            "personalEmailValidityStatus": "string",
            "phone": "string",
            "preferredChannel": "string",
            "profession": "string",
            "professionalEmail": "string",
            "professionalEmailValidityStatus": "string",
            "psaWorker": true,
            "salutation": "string",
            "singleName": "string",
            "standardizedFirstName": "string",
            "standardizedLastName": "string",
            "title": "string"
  }
}
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/customer/v1/customer-first/update/information/63973dbf9411d35bb8dedb63'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'
      

      And header customerType  = 'Account_B2B'
      And header context  = 'orderform'
      
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method put
    
      Then status 500 

Scenario:  retrieves picklist information from Salesforce
         
      
      Given url omniUrl
      And path '/customer/v1/customer-first/picklists'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header brandCode = 'DS'
      And header marketCode = 'IT'
      And header languageCode = 'it'
      And header x-trace-id = 'karate-test-12345'
      
      When method Get

      Then status 404

Scenario: Trigger transactional email via Salesforce 

    * def RequestBody = 
      """ 
      {
        "omniB2CRTFinanceSansPX": {
          "orderId": "string"
        },
        "omniB2CRTCashSansPX": {
          "orderId": "string"
        },
        "omniPositivePostOrderModification": {
          "orderId": "string"
        },
        "omniNegativePostOrderModification": {
          "orderId": "string"
        },
        "omniCV3ConfigOnLine": {
          "configurationCode": "string",
          "email": "string",
          "width": "string",
          "height": "string",
          "source": "cart-sync",
          "localizeName": "string"
        },
        "omniRTSaveBasket": {
          "quotationCode": "string",
          "token": "string",
          "localizeName": "string",
          "isLogged": true
        },
        "omniServiceContract": {
          "orderId": "string"
        }
    }
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/customer/v1/customer-first/v2/trigger-email'

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

Scenario: Convert guest data to a registered user using email 

    * def RequestBody = 
      """ 
      {
      "gigyaToken": "string",
      "gigyaId": "string",
      "sessionId": "string",
      "email": "string"
       }
      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/customer/v1/convert-guest'

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

Scenario: Create Consents 

    * def RequestBody = 
      """ 
        {
          "consent": {
          "country": "IT",
          "C1STcustomerId": "123456",
          "userId": "user_test_01",
          "documentType": "privacy",
          "collectedDate": "2026-04-05T14:00:00Z", 
          "disclaimerId": "DIS-001",
          "entityId": "ENT-99",
          "contMethod": {
          "personalEmail": "test@example.com"
        },
            "partyConsents": [
              {
                "purpose": "string",
                "consent1Meaning": "string",
                "consent1Checkbox": true,
                "consent2Meaning": "string",
                "consent2Checkbox": true,
                "consent3Meaning": "string",
                "consent3Checkbox": true,
                "consent4Meaning": "string",
                "consent4Checkbox": true,
                "consent5Meaning": "string",
                "consent5Checkbox": true,
                "consent6Meaning": "string",
                "consent6Checkbox": true,
                "consent7Meaning": "string",
                "consent7Checkbox": true,
                "consent8Meaning": "string",
                "consent8Checkbox": true
              }
            ]
          }
        }

      
      """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/customer/v1/customer-first/consents'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'    
      And header Content-Type = 'application/json'

      And header customerType = 'Account_B2B'
     
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post
    
      Then status 500

Scenario:  search Ref Consents
         
      
      Given url omniUrl
      And path '/customer/v1/customer-first/ref-consent-documents'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And param brand   = 'DS'
      And param country = 'IT'
      And param language = 'it'
      And param documentType = "CONFIRMATION"
      And header x-trace-id = 'karate-test-12345'
      
      When method Get

      Then status 200

Scenario:  Get leaser
         
      
      Given url omniUrl
      And path '/customer/v1/customer-first/leaser'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And param dealerId = '0103250'
      And param country = 'AT'
    
      And header x-trace-id = 'karate-test-12345'
      
      When method Get

      Then status 200

Scenario:  Get Driver
         
      
      Given url omniUrl
      And path '/customer/v1/customer-first/driver/0017Z00002BNG77QAH'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
      
      When method Get

      Then status 500

Scenario:  retrieves one customer entity based on Customer Id
         
      
      Given url omniUrl
      And path '/customer/v1/customer-first/eseller-nsc/information/0017Z0000287QoUQAU'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      
      And header customerType = 'accountCFirstId'
      And header esellerToken = ''
      And header nscToken = ''
      And header x-trace-id = 'karate-test-12345'
      
      When method Get

      Then status 401