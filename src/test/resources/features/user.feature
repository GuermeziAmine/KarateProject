Feature: JSONPlaceholder API Tests

Background:
    * url 'https://jsonplaceholder.typicode.com'


Scenario: Get post
    Given path 'posts', 1
    When method GET
    Then status 200
    And match response.id == 1


Scenario: Create post
    Given path 'posts'
    And request
    """
    {
      "title": "Karate Test",
      "body": "Testing POST request",
      "userId": 1
    }
    """
    When method POST
    Then status 201
    And match response.title == "Karate Test"


Scenario: Update post
    Given path 'posts', 1
    And request
    """
    {
      "id": 1,
      "title": "Updated Title",
      "body": "Updated body",
      "userId": 1
    }
    """
    When method PUT
    Then status 200
    And match response.title == "Updated Title"


Scenario: Delete post
    Given path 'posts', 1
    When method DELETE
    Then status 200