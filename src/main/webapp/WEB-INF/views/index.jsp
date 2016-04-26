<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Spring MVC + AngularJS</title>
    <style>
        .username.ng-valid {
            background-color: lightgreen;
        }
        .username.ng-dirty.ng-invalid-required {
            background-color: red;
        }
        .username.ng-dirty.ng-invalid-minlength {
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

    </style>
    <link rel="stylesheet" href="https://bootswatch.com/yeti/bootstrap.min.css">
    <link href="<c:url value='/static/css/app.css'/>" rel="stylesheet"></link>
</head>

<div class="generic-container">
    <div class="well bs-component">
            <div class="panel-heading"><legend>Person Registration Form </legend></div>
        <div>
            <form name="myForm" class="form-horizontal">
                <input type="hidden"/>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-lg-2 control-label">Name</label>
                        <div class="col-md-7">
                            <input type="text" name="name" class="form-control" placeholder="Enter your name" required ng-minlength="3"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-lg-2 control-label">Last name</label>
                        <div class="col-md-7">
                            <input type="text" name="name" class="form-control" placeholder="Enter your last name" required ng-minlength="3"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-lg-2 control-label">Email</label>
                        <div class="col-md-7">
                            <input type="email" name="email" class="email form-control" placeholder="Enter your Email" required/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-lg-2 control-label">Age</label>
                        <div class="col-md-7">
                            <input type="text" name="name" class="form-control" placeholder="Enter your age" required ng-minlength="3"/>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="form-actions floatRight">
                        <input type="submit"  value="" class="btn btn-primary btn-sm">
                        <button type="button" class="btn btn-warning btn-sm">Reset Form</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of Persons </span></div>
        <div class="tablecontainer">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>ID.</th>
                    <th>Name</th>
                    <th>Last name</th>
                    <th>Email</th>
                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>

</body>
</html>