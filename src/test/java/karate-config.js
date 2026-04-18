function fn() {

  var env = karate.env || 'preprod'; 
  karate.log('Karate est en train de s\'exécuter sur l\'environnement :', env);

  var config = {
    baseUrl: 'https://api-noprod.omnichannel-stage.np.stla-aws.net'
  };

  if (env == 'dev') {
    config.env = '/dev';
    config.omniUrl = config.baseUrl + '/dev';
  } else if (env == 'staging') {
    config.env = '/staging';
    config.omniUrl = config.baseUrl + '/staging';
  } else {
    // preprod par défaut
    config.env = '/preprod';
    config.omniUrl = config.baseUrl + '/preprod';
  }

  var authResult = karate.callSingle('classpath:features/auth.feature', config);
  config.token = authResult.authToken;
  
  return config;
}