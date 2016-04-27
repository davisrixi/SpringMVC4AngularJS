<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Spring MVC + AngularJS</title>
    <style>
        .name.ng-valid {
            background-color: lightgreen;
        }

        .name.ng-dirty.ng-invalid-required {
            background-color: red;
        }

        .name.ng-dirty.ng-invalid-minlength {
            background-color: yellow;
        }

        .lastName.ng-valid {
             background-color: lightgreen;
         }

        .lastName.ng-dirty.ng-invalid-required {
            background-color: red;
        }

        .lastName.ng-dirty.ng-invalid-email {
            background-color: yellow;
        }

        .email.ng-valid {
            background-color: lightgreen;
        }

        .email.ng-dirty.ng-invalid-required {
            background-color: red;
        }

        .email.ng-dirty.ng-invalid-email {
            background-color: yellow;
        }

        .age.ng-valid {
            background-color: lightgreen;
        }

        .age.ng-dirty.ng-invalid-required {
            background-color: red;
        }

        .age.ng-dirty.ng-invalid-email {
            background-color: yellow;
        }


    </style>
    <link rel="stylesheet" href="https://bootswatch.com/yeti/bootstrap.min.css">
    <link href="<c:url value='/static/css/app.css'/>" rel="stylesheet"></link>
</head>
<body ng-app="dApp">


<div class="container" ng-controller="PersonController as ctrl">
    <div class="well bs-component">
        <div class="panel-heading">
            <legend>Person Registration Form</legend>
        </div>
        <div>
            <form name="myForm" class="form-horizontal" ng-submit="ctrl.submit()">
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-lg-2 control-label">Name</label>
                        <div class="col-md-7">
                            <input ng-model="ctrl.person.name" type="text" name="name" class="name form-control" placeholder="Enter your name" required
                                   ng-minlength="3"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-lg-2 control-label">Last name</label>
                        <div class="col-md-7">
                            <input ng-model="ctrl.person.lastName" type="text" name="lastName" class="lastName form-control" placeholder="Enter your last name"
                                   required ng-minlength="3"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-lg-2 control-label">Email</label>
                        <div class="col-md-7">
                            <input ng-model="ctrl.person.email" type="email" name="email" class="email form-control" placeholder="Enter your Email"
                                   required/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-lg-2 control-label">Age</label>
                        <div class="col-md-7">
                            <input ng-model="ctrl.person.age" type="number" name="age" class="age form-control" placeholder="Enter your age" required
                                   />
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="form-actions floatRight">
                        <input type="submit"  value="{{!ctrl.person.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                        <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                    </div>
                </div>
            </form>
        </div>
    </div>


    <div class="well bs-component">

        <div class="panel-heading">
            <legend>List of Persons</legend>
        </div>
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>Id.</th>
                <th>Name</th>
                <th>Last name</th>
                <th>Email</th>
                <th>Age</th>
                <th>&nbsp;</th>
            </tr>
            </thead>
            <tbody>
            <tr ng-repeat="u in ctrl.persons">
                <td><span ng-bind="u.id"></span></td>
                <td><span ng-bind="u.name"></span></td>
                <td><span ng-bind="u.lastName"></span></td>
                <td><span ng-bind="u.email"></span></td>
                <td><span ng-bind="u.age"></span></td>

                <td>
                    <button type="button" ng-click="ctrl.edit(u.id)" class="btn btn-success btn-xs">Edit</button>
                    <button type="button" ng-click="ctrl.remove(u.id)" class="btn btn-danger btn-xs">Remove</button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

</div>


<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
<script src="<c:url value='/static/js/app.js' />"></script>
<script src="<c:url value='/static/js/service/person_service.js' />"></script>
<script src="<c:url value='/static/js/controller/person_controller.js' />"></script>
</body>
</html>