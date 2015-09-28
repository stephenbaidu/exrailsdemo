
angular.module('angularApp')
  .controller('ApartmentCtrl', function ($scope, APP, $http, exMsg) {
    var vm = $scope;

    vm.$on('model:index-config-loaded', function (evt, modelName, config, scope) {
      if (modelName !== 'Apartment') return;
      // Do something
    });

    vm.$on('model:form-config-loaded', function (evt, modelName, config, scope) {
      if (modelName !== 'Apartment') return;
      // Do something
    });

    vm.$on('model:record-loaded', function (evt, modelName, record, scope) {
      if (modelName !== 'Apartment') return;
      // Do something
    });
  });

angular.module('angularApp')
  .run(function (gridService, fieldService) {
    // Set grid config
    gridService.set('apartment', gridConfig());

    // Set config for angular-formly
    fieldService.set('apartment', fieldConfig());

    function gridConfig () {
      return ["name", "apartment_building_id", "apartment_type_id", "apartment_number", "no_of_bathrooms"];
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
              "key": "apartment_building_id",
              "type": "ex-select",
              "templateOptions": {
                "required": false,
                "label": "Apartment Building",
                "lookup": "apartment_building",
                "valueProp": "value",
                "labelProp": "name",
                "options": []
              },
              "controller": /* @ngInject */ function($scope, lookupService) {
                lookupService.load('apartment').then(function() {
                  $scope.to.options = lookupService.get('apartment', $scope.to.lookup);
                });
              }
            }
          ]
        },
        {
          "fieldGroup": [
            {
              "className": "col-xs-6",
              "key": "apartment_type_id",
              "type": "ex-select",
              "templateOptions": {
                "required": false,
                "label": "Apartment Type",
                "lookup": "apartment_type",
                "valueProp": "value",
                "labelProp": "name",
                "options": []
              },
              "controller": /* @ngInject */ function($scope, lookupService) {
                lookupService.load('apartment').then(function() {
                  $scope.to.options = lookupService.get('apartment', $scope.to.lookup);
                });
              }
            },
            {
              "className": "col-xs-6",
              "key": "apartment_number",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "Apartment Number"
              }
            }
          ]
        },
        {
          "fieldGroup": [
            {
              "className": "col-xs-6",
              "key": "no_of_bathrooms",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "No Of Bathrooms"
              }
            },
            {
              "className": "col-xs-6",
              "key": "no_of_bedrooms",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "No Of Bedrooms"
              }
            }
          ]
        },
        {
          "fieldGroup": [
            {
              "className": "col-xs-6",
              "key": "no_of_rooms",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "No Of Rooms"
              }
            },
            {
              "className": "col-xs-6",
              "key": "availability_status_id",
              "type": "ex-select",
              "templateOptions": {
                "required": false,
                "label": "Availability Status",
                "lookup": "availability_status",
                "valueProp": "value",
                "labelProp": "name",
                "options": []
              },
              "controller": /* @ngInject */ function($scope, lookupService) {
                lookupService.load('apartment').then(function() {
                  $scope.to.options = lookupService.get('apartment', $scope.to.lookup);
                });
              }
            }
          ]
        },
        {
          "fieldGroup": [
            {
              "className": "col-xs-12",
              "key": "apartment_facility_ids",
              "type": "ex-select-multiple",
              "templateOptions": {
                "required": false,
                "label": "Apartment Facilities",
                "lookup": "apartment_facility",
                "placeholder": "Select apartment facilities ...",
                "valueProp": "value",
                "labelProp": "name",
                "options": []
              },
              "controller": /* @ngInject */ function($scope, lookupService) {
                lookupService.load('apartment', 'apartment_facility').then(function() {
                  $scope.to.options = lookupService.get('apartment', $scope.to.lookup);
                });
              }
            }
          ]
        }
      ];
    }
  });
