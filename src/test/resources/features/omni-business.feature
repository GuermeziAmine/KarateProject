Feature: OMNI Basket Service Logic

  Background:
    # On sauvegarde l'URL de base pour la réutiliser après l'appel local
    * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net'
    * def authResult = call read('auth.feature')
    * def token = authResult.authToken

  Scenario: Retrieve accessories for a vehicle with Checksum

    # ---------------------------------------------------------
    # 1. DEFINITION OF PAYLOAD
    # ---------------------------------------------------------
    * def requestPayload =
    """
    {
      "brand": {
        "code": "DS",
        "desc": "DS Brand"
      },
      "language": "it",
      "opts": [],
      "drive": "L",
      "context": "B2C",
      "isShortList": true,
      "country": "IT",
      "source": "B2C",
      "dealer": "12345",
      "lcdv": "1PP5A5TMK1B0A0B0",
      "mvss": "string",
      "locationCode": "string",
      "deductionId": "string",
      "vehicleUse": "string",
      "engine": "string",
      "fuel": "string",
      "externalColor": "string",
      "internalColor": "string",
      "countryId": "IT",
      "siteGeo": "IT"
    }
    """

    # ---------------------------------------------------------
    # 2. GÉNÉRATION DU CHECKSUM (APPEL LOCAL NODE.JS)
    # ---------------------------------------------------------
    Given url 'http://localhost:3012/checksum'
    And header Content-Type = 'application/json'
    And request requestPayload
    When method post
    Then status 200

    # On force en String et on retire TOUS les guillemets pour l'API OMNI
    * def generatedChecksum = response.toString().replace(/"/g, '')
    * print 'Checksum nettoyé sans guillemets :', generatedChecksum


    # ---------------------------------------------------------
    # 3. APPEL DE L'API OMNI FINALE
    # ---------------------------------------------------------
    Given url omniUrl
    And path '/preprod/basket/v1/accessories'

    # Headers standards
    And header Authorization = 'Bearer ' + token
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'

    # Headers de contexte OMNI
    And header brandCode = 'DS'
    And header marketCode = 'IT'
    And header languageCode = 'it'
    And header x-trace-id = 'karate-test-12345'

    # Header de sécurité contenant le checksum propre
    And header x-country-id = generatedChecksum

    # Envoi du même payload
    And request requestPayload
    When method post

    # ---------------------------------------------------------
    # 4. ASSERTIONS (Comportement normal attendu sur cet env)
    # ---------------------------------------------------------
    Then status 404
    And match response.httpStatus == "NOT_FOUND"
    And match response.message contains "TranscodingBrandService error"

    And print 'OMNI Final Expected Response: ', response