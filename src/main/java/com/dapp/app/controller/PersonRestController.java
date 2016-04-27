package com.dapp.app.controller;

import com.dapp.app.model.Person;
import com.dapp.app.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by davis on 4/26/16.
 */
@RestController
public class PersonRestController {

    @Autowired
    PersonService personService;

    @RequestMapping(value = "/person/", method = RequestMethod.GET)
    public ResponseEntity<List<Person>> listAllUsers() {
        List<Person> users = personService.findAllPersons();
        if(users.isEmpty()){
            return new ResponseEntity<List<Person>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<Person>>(users, HttpStatus.OK);
    }
}
