Package.describe({
  name: 'cosmos:flow-router-path-helpers',
  version: '0.1.1',
  summary: 'Use pathFor/urlFor/linkTo/isPath helpers with FlowRouter',
  git: 'http://github.com/elidoran/cosmos-flow-router-path-helpers.git',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.0.4.2');

  api.use([
      'coffeescript',
      'cosmos:path-helpers@0.1.0',
      'meteorhacks:flow-router@1.0.4'
    ], 'client'
  );

  api.addFiles('flowRouterImpl.coffee', 'client');

});

Package.onTest(function(api) {
  api.use([
    'tinytest',
    'coffeescript',
    'cosmos:flow-router-path-helpers',
    'meteorhacks:flow-router@1.0.4'
  ], 'client');

  api.addFiles([
    'test/testFlowRouterImpl.coffee'
  ], 'client' );
});
