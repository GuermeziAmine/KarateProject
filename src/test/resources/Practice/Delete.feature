Feature:Delete

Background:
    * url 'https://jsonplaceholder.typicode.com'

Scenario: Delete post
    Given path 'posts', 1
    When method DELETE
    Then status 200