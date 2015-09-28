
angular.module('angularApp')
  .controller('GuestCtrl', function ($scope, APP, $http, exMsg) {
    var vm = $scope;

    vm.$on('model:index-config-loaded', function (evt, modelName, config, scope) {
      if (modelName !== 'Guest') return;
      // Do something
    });

    vm.$on('model:form-config-loaded', function (evt, modelName, config, scope) {
      if (modelName !== 'Guest') return;
      // Do something
    });

    vm.$on('model:record-loaded', function (evt, modelName, record, scope) {
      if (modelName !== 'Guest') return;
      // Do something
    });
  });

angular.module('angularApp')
  .run(function (gridService, fieldService) {
    // Set grid config
    gridService.set('guest', gridConfig());

    // Set config for angular-formly
    fieldService.set('guest', fieldConfig());

    function gridConfig () {
      return ["name", "gender_id", "date_of_birth", "first_language"];
    }
    
    function fieldConfig () {
      return [
        {
          "fieldGroup": [
            {
              "className": "col-xs-6",
              "key": "name",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "Name"
              }
            },
            {
              "className": "col-xs-6",
              "key": "gender_id",
              "type": "ex-select",
              "templateOptions": {
                "required": false,
                "label": "Gender",
                "lookup": "gender",
                "valueProp": "value",
                "labelProp": "name",
                "options": []
              },
              "controller": /* @ngInject */ function($scope, lookupService) {
                lookupService.load('guest').then(function() {
                  $scope.to.options = lookupService.get('guest', $scope.to.lookup);
                });
              }
            }
          ]
        },
        {
          "fieldGroup": [
            {
              "className": "col-xs-6",
              "key": "date_of_birth",
              "type": "ex-datepicker",
              "templateOptions": {
                "required": false,
                "label": "Date Of Birth"
              }
            },
            {
              "className": "col-xs-6",
              "key": "first_language",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "First Language"
              }
            }
          ]
        }
      ];
    }
  });
