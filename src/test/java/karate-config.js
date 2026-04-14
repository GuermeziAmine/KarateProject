function fn() {
  var config = {
    baseUrl: 'https://api-noprod.omnichannel-stage.np.stla-aws.net',
    env: '/preprod',
    // On construit l'URL complète ici une bonne fois pour toutes
    omniUrl: 'https://api-noprod.omnichannel-stage.np.stla-aws.net/preprod'
  };

  // callSingle va exécuter auth.feature UNE SEULE FOIS pour toute la session
  // J'utilise le chemin exact qui apparaissait dans ton message d'erreur
  var authResult = karate.callSingle('classpath:features/auth.feature', config);
  
  // On stocke le token dans la configuration globale
  config.token = authResult.authToken;

  return config;
}