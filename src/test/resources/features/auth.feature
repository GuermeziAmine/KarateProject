@ignore
Feature: OMNI Authentication

  Scenario: Retrieve OAuth2 Token
    Given url omniUrl
    Given path 'oauth2/v1/token'
    
    # On utilise des headers standards sans se faire passer pour un navigateur
    And header Accept = '*/*'
    And header Content-Type = 'application/json'
    And header Authorization = 'Basic MmM1NDA5YmEtN2Q3Yi00YzIzLWE4MTMtMzIwYWJlZDVmOGQxOlNhMzdGczRMbkRkR3Rqb0NPVUlJM204WEgzcEFuczVFN29QbmdiYzNWcmpFQVg1ZEd3'
    # Optionnel : On s'identifie clairement comme un outil technique
    And header User-Agent = 'Apache-HttpClient/4.5.13'
    
    And request { "grantType": "client_credentials", "scope": "read" }
    When method post
    
    # --- LIGNES DE DEBUG CRUCIALES ---
    # Si ça échoue en 403, AWS WAF renverra une page HTML expliquant POURQUOI
    * print '=== HTTP STATUS ===', responseStatus
    * print '=== REPONSE DU SERVEUR ===', response
    
    Then status 200

    * def authToken = response.accessToken
    * print 'Generated Token Check:', authToken