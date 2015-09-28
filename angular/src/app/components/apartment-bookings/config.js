
angular.module('angularApp')
  .controller('ApartmentBookingCtrl', function ($scope, APP, $http, exMsg) {
    var vm = $scope;

    vm.$on('model:index-config-loaded', function (evt, modelName, config, scope) {
      if (modelName !== 'ApartmentBooking') return;
      // Do something
    });

    vm.$on('model:form-config-loaded', function (evt, modelName, config, scope) {
      if (modelName !== 'ApartmentBooking') return;
      // Do something
    });

    vm.$on('model:record-loaded', function (evt, modelName, record, scope) {
      if (modelName !== 'ApartmentBooking') return;
      // Do something
    });
  });

angular.module('angularApp')
  .run(function (gridService, fieldService) {
    // Set grid config
    gridService.set('apartment_booking', gridConfig());

    // Set config for angular-formly
    fieldService.set('apartment_booking', fieldConfig());

    function gridConfig () {
      return ["apartment_id", "guest_id", "booking_start_date", "booking_end_date", "booking_status_id"];
    }
    
    function fieldConfig () {
      return [
        {
          "fieldGroup": [
            {
              "className": "col-xs-6",
              "key": "apartment_id",
              "type": "ex-select",
              "templateOptions": {
                "required": false,
                "label": "Apartment",
                "lookup": "apartment",
                "valueProp": "value",
                "labelProp": "name",
                "options": []
              },
              "controller": /* @ngInject */ function($scope, lookupService) {
                lookupService.load('apartment_booking').then(function() {
                  $scope.to.options = lookupService.get('apartment_booking', $scope.to.lookup);
                });
              }
            },
            {
              "className": "col-xs-6",
              "key": "guest_id",
              "type": "ex-select",
              "templateOptions": {
                "required": false,
                "label": "Guest",
                "lookup": "guest",
                "valueProp": "value",
                "labelProp": "name",
                "options": []
              },
              "controller": /* @ngInject */ function($scope, lookupService) {
                lookupService.load('apartment_booking').then(function() {
                  $scope.to.options = lookupService.get('apartment_booking', $scope.to.lookup);
                });
              }
            }
          ]
        },
        {
          "fieldGroup": [
            {
              "className": "col-xs-6",
              "key": "booking_start_date",
              "type": "ex-datepicker",
              "templateOptions": {
                "required": false,
                "label": "Booking Start Date"
              }
            },
            {
              "className": "col-xs-6",
              "key": "booking_end_date",
              "type": "ex-datepicker",
              "templateOptions": {
                "required": false,
                "label": "Booking End Date"
              }
            }
          ]
        },
        {
          "fieldGroup": [
            {
              "className": "col-xs-6",
              "key": "booking_status_id",
              "type": "ex-select",
              "templateOptions": {
                "required": false,
                "label": "Booking Status",
                "lookup": "booking_status",
                "valueProp": "value",
                "labelProp": "name",
                "options": []
              },
              "controller": /* @ngInject */ function($scope, lookupService) {
                lookupService.load('apartment_booking').then(function() {
                  $scope.to.options = lookupService.get('apartment_booking', $scope.to.lookup);
                });
              }
            },
            {
              "className": "col-xs-6",
              "key": "comments",
              "type": "ex-input",
              "templateOptions": {
                "required": false,
                "label": "Comments"
              }
            }
          ]
        }
      ];
    }
  });
