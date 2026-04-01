Feature: Chaining

@API
Scenario: Récupérer les commentaires d'un post spécifique d'un utilisateur

  Given url 'https://jsonplaceholder.typicode.com'
  When method get
  Then status 200
  * def firstPostId = response[0].id
  
  Given url 'https://jsonplaceholder.typicode.com'
  And param postId = firstPostId
  When method Get
  Then status 200
  