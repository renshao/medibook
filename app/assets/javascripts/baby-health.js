var medicalBookServices = angular.module('medicalBookServices', ['ngResource']);
 
medicalBookServices.factory('Card', ['$resource',
  function($resource){
    return $resource('cards/:id.json', {}, {});
}]);



var app = angular.module('medicalBook', ['ngAnimate', 'medicalBookServices']);
app.config([
  "$httpProvider", function($httpProvider) {
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
  }
]);

app.controller('AppCtrl', function ($scope, Card) {
  $scope.editingCard = null;
  $scope.cards = Card.query();

  $scope.symptomOptions = [
    {
      symptom: 'temp',
      icon: 'medkit',
      selected: false
    },
    {
      symptom: 'vomit',
      icon: 'bug',
      selected: false
    },
    {
      symptom: 'rash',
      icon: 'linux',
      selected: false
    }
  ];

  $scope.otherSymptoms = [];

  $scope.addCard = function () {
    this.editingCard = new Card({card_type: 'sick'});
  };

  $scope.save = function () {
    var card = this.editingCard;
    card.$save();
    $scope.cards.unshift(card);
    this.editingCard = null;
  };

  $scope.editing = function () {
    return this.editingCard !== null;
  };

  $scope.toggleOption = function (option) {
    option.selected = !option.selected;
  };

  $scope.optionClass = function (option) {
    return option.selected ? 'selected' : '';
  };

  $scope.addSymptom = function () {
    this.otherSymptoms.push(this.otherSymptom);
    this.otherSymptom = '';
  };
});