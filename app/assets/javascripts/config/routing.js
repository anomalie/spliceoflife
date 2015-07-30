(function(){

  angular
    .module('mainApp')
    .config(config);

    function config($stateProvider, $urlRouterProvider){
      $stateProvider
        .state('home', {
          url: '/',
          templateUrl: 'home.html',
          controller: 'mainController',
          controllerAs: 'mainCtrl',
        });

        $urlRouterProvider.otherwise('/');
    }

})();