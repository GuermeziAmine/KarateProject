Feature: JSONPlaceholder API Tests

Background:
    * url 'https://jsonplaceholder.typicode.com'


Scenario: Get post
    Given path 'posts', 1
    When method GET
    Then status 404
    And match response.id == 1






