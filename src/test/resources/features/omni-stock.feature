Feature: OMNI Stock Service 

 Background:

    * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net'
    * def authResult = call read('auth.feature')
    * def token = authResult.authToken
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
        And  path '/preprod/stock/v1/get-list-models'

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
    Then status 200

