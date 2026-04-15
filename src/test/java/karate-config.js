function fn() {
  var config = {
    baseUrl: 'https://api-noprod.omnichannel-stage.np.stla-aws.net',
    env: '/staging',
    omniUrl: 'https://api-noprod.omnichannel-stage.np.stla-aws.net/staging'
  };

    var authResult = karate.callSingle('classpath:features/auth.feature', config);
    
    config.token = authResult.authToken;
  
  return config;
}