function fn() {
  var config = {
    baseUrl: 'https://api-noprod.omnichannel-stage.np.stla-aws.net',
    env: '/preprod',
    omniUrl: 'https://api-noprod.omnichannel-stage.np.stla-aws.net/preprod'
  };

  try {
    // On essaie de récupérer le token
    var authResult = karate.callSingle('classpath:features/auth.feature', config);
    config.token = authResult.authToken;
    karate.log('Token récupéré avec succès !');
  } catch (e) {
    // Si AWS nous bloque (403), on attrape l'erreur au lieu de crasher
    karate.log('ERREUR DANS LE CONFIG : auth.feature a échoué (probablement le 403 AWS).', e);
    // On met une fausse valeur pour que "omniUrl" soit quand même envoyé aux tests
    config.token = 'ERREUR_TOKEN';
  }

  return config;
}