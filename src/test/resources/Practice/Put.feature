Feature:Put

Background:
    * url 'https://jsonplaceholder.typicode.com'
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


