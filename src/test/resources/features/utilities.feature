@ignore
Feature: Outils de calcul
  
  Scenario: checksum pour OMNI
    Given url 'http://localhost:3012/checksum'
    And header Content-Type = 'application/json'
    And request RequestBody 
    When method post
    Then status 200
    * def result = response.toString().replace(/"/g, '')
    