
angular.module('angularApp')
  .controller('ApartmentBuildingCtrl', function ($scope, APP, $http, exMsg) {
    var vm = $scope;

    vm.$on('model:index-config-loaded', function (evt, modelName, config, scope) {
      if (modelName !== 'ApartmentBuilding') return;
      // Do something
    });

    vm.$on('model:form-config-loaded', function (evt, modelName, config, scope) {
      if (modelName !== 'ApartmentBuilding') return;
      // Do something
    });

    vm.$on('model:record-loaded', function (evt, modelName, record, scope) {
      if (modelName !== 'ApartmentBuilding') return;
      // Do something
    });
  });

angular.module('angularApp')
  .run(function (gridService, fieldService) {
    // Set grid config
    gridService.set('apartment_building', gridConfig());

    // Set config for angular-formly
    fieldService.set('apartment_building', fieldConfig());

    function gridConfig () {
      return ["name", "short_name", "description", "address", "manager"];
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
              "key": "short_name",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "Short Name"
              }
            }
          ]
        },
        {
          "fieldGroup": [
            {
              "className": "col-xs-6",
              "key": "description",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "Description"
              }
            },
            {
              "className": "col-xs-6",
              "key": "address",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "Address"
              }
            }
          ]
        },
        {
          "fieldGroup": [
            {
              "className": "col-xs-6",
              "key": "manager",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "Manager"
              }
            },
            {
              "className": "col-xs-6",
              "key": "phone",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "Phone"
              }
            }
          ]
        }
      ];
    }
  });
