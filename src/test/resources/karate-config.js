function () {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'test';
  }

  var port = 3000;
  var baseUrl = 'http://localhost';

  if (env == 'test') {
    port = 3001;
  }

  var config = {
    env: env,
    pharmaciesUrl : baseUrl + ':' + port + '/v2/pharmacies',
    defaultCityCode: '34',
    cityIndex : 8
  };

  karate.configure('connectTimeout', 30000);
  karate.configure('readTimeout', 60000);
  return config;
}