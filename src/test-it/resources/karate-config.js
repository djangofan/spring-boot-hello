function fn() {
  var port = karate.properties['karate.server.port'];
  port = port || '8080';
  config.mockServerUrl = 'http://localhost:' + port + '/greeting/';
  config.placeholderUrl = 'https://jsonplaceholder.typicode.com';
  return config;
}
