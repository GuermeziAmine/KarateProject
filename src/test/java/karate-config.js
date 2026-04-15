function fn() {
  var config = {
    baseUrl: 'https://api-noprod.omnichannel-stage.np.stla-aws.net',
    env: '/preprod',
    omniUrl: 'https://api-noprod.omnichannel-stage.np.stla-aws.net/preprod'
  };

    var authResult = karate.callSingle('classpath:features/auth.feature', config);
    
    config.token = authResult.authToken;
  
  return config;
}