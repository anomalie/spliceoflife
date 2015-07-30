(function(){
  angular
    .module('mainApp')
    .controller('mainController', mainController);

  function mainController($http, $resource, $state){
    var tutorial = $resource('/api/tutorials/:id',{id:'@id'});

      // capture variable
      var ctrl = this;

      // Create a promise - asynchronis
      var promise = $http.get('/api/articles').success(function(data, status, headers, config){
        return data;  
      });

      promise.then(function(response){
        ctrl.tutorials = response.data;
      });

  }



})();