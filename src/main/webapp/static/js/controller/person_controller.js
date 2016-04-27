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

    self.submit = function() {
        if(self.person.id==null){
            console.log('Saving New Person', self.person);
            self.createPerson(self.person);
        }else{
            self.updatePerson(self.person, self.person.id);
            console.log('Person updated with id ', self.person.id);
        }
        self.reset();
    };

    self.createPerson = function(person){
        PersonService.createPerson(person)
            .then(
                self.fetchAllPersons,
                function(errResponse){
                    console.error('Error while creating Person.');
                }
            );
    };

    self.updatePerson = function(person, id){
        PersonService.updatePerson(person, id)
            .then(
                self.fetchAllPersons,
                function(errResponse){
                    console.error('Error while updating Person.');
                }
            );
    };

    self.reset = function(){
        self.person={id:null,name:'',lastName:'',email:'',age:''};
        $scope.myForm.$setPristine(); //reset Form
    };


}]);
