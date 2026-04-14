Feature: OMNI Magneto Service Logic

    Background:
        * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net' + '/dev'
        * def authResult = call read('auth.feature')
        * def token = authResult.authToken
Scenario: Validate final status for vehicle trade-in
    
    * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/trade-in/firm-status-update'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500

Scenario: Create a new bank financing quote
    
     * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/bank/new-quote'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500

Scenario: Update the credit application status for bank
    
    * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/bank/CA-status-update'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500

Scenario: approve Manually  a subscription order
    
    * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/check-out/manual-order-approval'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500

Scenario: Create a new leasing quote
    
    * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/leasCo/new-quote'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500


Scenario: Update the credit application status for a leasing contract
    
    * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/leasCo/CA-status-update'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500


Scenario: Receive asynchronous supply chain feedback
    
    * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/oms/async-scl-feedback'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500

Scenario: Approve multiple leasing applications in bulk
    
    * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/leasCo/bulk-approved'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500


Scenario: Reject multiple leasing applications in bulk
    
    * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/leasCo/bulk-rejected'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500

Scenario: Approve a single bank financing proposal
    
    * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/bank/unitary-proposal-approved'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500



Scenario: Discard an single bank financing proposal
    
    * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/bank/unitary-proposal-discarded'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500


Scenario: Cancel an existing vehicle subscription
    
    * def RequestBody = "COMPLETED"
          
      Given url omniUrl
      And path '/mop-subs/v1/subscription/cancellation'

      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 
  
      And header x-trace-id = 'karate-test-12345'
      
      And request RequestBody
      When method post

      Then status 500

