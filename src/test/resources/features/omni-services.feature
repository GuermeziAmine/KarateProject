Feature: OMNI Services Logic

Background:
    
    * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net' + '/preprod'
    * def authResult = call read('auth.feature')
    * def token = authResult.authToken
Scenario: Returns the service contract family compatibility

      * def RequestBody = 
      """
            {
            "market": "1000",
            "familyCode": "T99"
            }
      """

      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/service-contract/v1/family-compatibility'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json'

      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200
