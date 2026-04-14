Feature: OMNI Images Service Logic

    Background:
        * def omniUrl = 'https://api-noprod.omnichannel-stage.np.stla-aws.net' + '/dev'
        * def authResult = call read('auth.feature')
        * def token = authResult.authToken

Scenario: Retrieve url images from Asset Picker or V3D  

      * def RequestBody = 
        """
         {
           "client": "OMNICS",
           "consumer": "small",
           "ratio": "1",
           "format": "png",
           "quality": 100,
           "width": 706,
           "height": 375,
           "back": "0",
           "version": "1GO5C5LL5KB0A0C0",
           "color": "0MM50NPQ",
           "body": "0MM50NPQ",
            "market": "3103",
            "brand": "OV",
            "wheel": "ZHYB",
            "seat": "X4FX",
            "model": "ASTRASPT-wccf",
            "source": "opel",
            "trim": "0PX40RFX",
            "engine": "ESS00110",
            "mmvs": "1GO5C5LL5KB0A0C0",
            "opt": "ZJBT,RC71,WAFX,JD00,GV05,AQ11,PDGU,EE00,N400,MO01,EG05,TC00,BMDN,MG14,RL02,JB00,LE05,1C03,YE01,YC03,RS00,CX01,AU00,I300,DZXO,LZ00,GQ13,D500,E300,LX44,LV02,CP01,DR07,CB08,MI00,QM00,QK00,L801,RA01,OCEC,NM00,NG00,YB00,O300,RT02,5N04,PQ00,YD02,O100,FH05,IM18,I400,LW01,CQ02,QF00,HU03,AL45,FX00,HY04,AB00,VD02,JA18,VB09,SP20,VH37,D417,PR05,UB23,1G03,I602,YQ02,RG31,ZVEH,LA10,ZHYB",
            "pack": null,
            "resolution": "BIG",
            "fuel": "02"               
            }
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/images/v1'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header brandCode = 'DS'
      And header marketCode = 'IT'
      And header languageCode = 'it'    
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200
Scenario: Retrieve bulk url images 

      * def RequestBody = 
        """
           [ {
            "consumer": "desktop",
            "model": "6658",
            "market": "1000",
            "brand": "83",
            "color": "PAW, OMM00N2T",
            "seat": "1HL",
            "wheel": "000",
            "angle": "ALL",        
            "view": "ALL",
            "width": 0,
            "height": 0,
            "client": "OMN",
            "version": "1PP2A5JESFB0A0E0",
            "ratio": 0,
            "format": "png",
            "quality": 85,
            "back": "0",
            "source": "alfaromeo (brand code 83)",
            "body": "414",
            "opt": "414,034,3DS,GTD,GX4,JVB,JWB,LCA,102,230,316,4M6,410,50X,508,64L,LA1,NH3,392,55B,LCB,02X,1D8,321,4EA,5FE,6YL,79U,RCH,RDG,RFX,RTK,4GF,8EW,03V,2NJ,5CA,5DE,8E7,CCB,010,389,850",
            "completeListOpt": "414,034,3DS,GTD,GX4,JVB,JWB,LCA,102,230,316,4M6,410,50X,508,64L,LA1,NH3,392,55B,LCB,02X,1D8,321,4EA,5FE,6YL,79U,RCH,RDG,RFX,RTK,4GF,8EW,03V,2NJ,5CA,5DE,8E7,CCB,010,389,850",
            "trim": "string",
            "pack": "string",
            "resolution": "BIG",
            "engine": "string",
            "fuel": "string",
            "gear": "string",
            "drive": "string",
            "mmvs": "string",
            "raiseError": true , 
            "name": "string"
            }
            ]
       """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/images/v1/bulk'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header brandCode = 'DS'
      And header marketCode = 'IT'
      And header languageCode = 'it'    
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Retrieve url thumbnails from Asset Picker or V3D 

      * def RequestBody = 
        """
        {
        "brand": {
            "code": "83",
            "desc": "Alfa Romeo"
        },
        "source": "alfaromeo",
        "consumer": "small",
        "model": {
            "code": "6220",
            "desc": "Tonale"
        },
        "market": {
            "code": "1000",
            "desc": "it"
        },
        "group": "BODY",
        "codes": "414, 217",
        "ph": true
    }
            """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/images/v1/thumbnails'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header brandCode = 'DS'
      And header marketCode = 'IT'
      And header languageCode = 'it'    
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200

Scenario: Retrieve bulk url thumbnails 

      * def RequestBody = 
        """
       [ {
        "brand": {
            "code": "83",
            "desc": "Alfa Romeo"
        },
        "source": "alfaromeo",
        "consumer": "small",
        "model": {
            "code": "6220",
            "desc": "Tonale"
        },
        "market": {
            "code": "1000",
            "desc": "it"
        },
        "group": "BODY",
        "codes": "414, 217",
        "ph": true,
        "name" : ""
    }]
            """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/images/v1/thumbnails-bulk'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header brandCode = 'DS'
      And header marketCode = 'IT'
      And header languageCode = 'it'    
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200
Scenario: Retrieve url images for tyre label 

      * def RequestBody = 
        """
         {
        "market": "1000",
        "brand": "83",
        "mvs": "622DFL0",
        "opts": ""
        }
            """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/images/v1/tyre-label'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header brandCode = 'DS'
      And header marketCode = 'IT'
      And header languageCode = 'it'    
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200
Scenario: Retrieve url images from V3D from Peugeot endpoint for all brands 

      * def RequestBody = 
        """
         {
            "brand": "DS",
            "country": "IT",
            "language": "it",
            "co2": 141,
            "efficiency": "D"
        }
            """
      * def utility = call read('utilities.feature') { RequestBody: #(RequestBody) }
      * def generatedChecksum = utility.result
      * print 'Checksum nettoyé sans guillemets :', generatedChecksum
      
      Given url omniUrl
      And path '/images/v1/energy-label'

     
      And header Authorization = 'Bearer ' + token
      And header Accept = 'application/json'
      And header Content-Type = 'application/json' 

      And header brandCode = 'DS'
      And header marketCode = 'IT'
      And header languageCode = 'it'    
      And header x-trace-id = 'karate-test-12345'
   
      And header x-country-id = generatedChecksum
      
      And request RequestBody
      When method post

      Then status 200