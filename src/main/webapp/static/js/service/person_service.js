/**
 * Created by davis on 4/26/16.
 */
'use strict';


App.factory('PersonService', ['$http', '$q', function ($http, $q) {


    return {
        fetchAllPersons: function () {
            return $http.get('http://localhost:8080/SpringMVC4AngularJS/person/')
                .then(
                    function (response) {
                        return response.data;
                    },
                    function (errResponse) {
                        console.error('Error while fetching persons');
                        return $q.reject(errResponse);
                    }
                );
        },
        createPerson: function(person){
            return $http.post('http://localhost:8080/SpringMVC4AngularJS/person/', person)
                .then(
                    function(response){
                        return response.data;
                    },
                    function(errResponse){
                        console.error('Error while creating person');
                        return $q.reject(errResponse);
                    }
                );
        },
        updatePerson: function(person, id){
            return $http.put('http://localhost:8080/SpringMVC4AngularJS/person/'+id, person)
                .then(
                    function(response){
                        return response.data;
                    },
                    function(errResponse){
                        console.error('Error while updating person');
                        return $q.reject(errResponse);
                    }
                );
        }
    };
}]);

