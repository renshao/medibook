var medicalBookServices = angular.module('medicalBookServices', ['ngResource']);
 
medicalBookServices.factory('Card', ['$resource',
  function($resource){
    return $resource('cards/:id.json', {}, {});
}]);



var app = angular.module('medicalBook', ['ngAnimate', 'medicalBookServices']);

app.controller('AppCtrl', function ($scope, Card) {
  $scope.editing = false;
  $scope.cards = Card.query();
  console.log($scope.cards);


  $scope.addCard = function () {
    this.editing = true;
  };

  $scope.save = function () {
    this.editing = false;
  };
});