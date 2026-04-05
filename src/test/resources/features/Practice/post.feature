Feature:Post

Background:
    * url 'https://jsonplaceholder.typicode.com'
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
