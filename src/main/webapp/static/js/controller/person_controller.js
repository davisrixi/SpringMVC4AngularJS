/**
 * Created by davis on 4/26/16.
 */
'use strict';


App.controller('PersonController', ['$scope', 'PersonService', function($scope, PersonService) {

    var self = this;
    self.person={id:null,name:'',lastName:'',email:'',age:''};
    self.persons=[];

    self.fetchAllPersons = function(){
        PersonService.fetchAllPersons()
            .then(
                function(d) {
                    self.persons = d;
                },
                function(errResponse){
                    console.error('Error while fetching Persons');
                }
            );
    };

    self.fetchAllPersons();

    self.reset = function(){
        self.person={id:null,name:'',lastName:'',email:'',age:''};
        $scope.myForm.$setPristine(); //reset Form
    };
}]);
