package com.dapp.app.controller;

import com.dapp.app.model.Person;
import com.dapp.app.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;

/**
 * Created by davis on 4/26/16.
 */
@RestController
public class PersonRestController {

    @Autowired
    PersonService personService;

    @RequestMapping(value = "/person/", method = RequestMethod.GET)
    public ResponseEntity<List<Person>> listAllPersons() {
        List<Person> persons = personService.findAllPersons();
        if(persons.isEmpty()){
            return new ResponseEntity<List<Person>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<Person>>(persons, HttpStatus.OK);
    }

    @RequestMapping(value = "/person/", method = RequestMethod.POST)
    public ResponseEntity<Void> createPerson(@RequestBody Person person, UriComponentsBuilder ucBuilder) {
        System.out.println("Creating Person " + person.getName());

        if (personService.isPersonExists(person)) {
            System.out.println("A Person with name " + person.getName() + " already exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }

        personService.savePerson(person);

        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(person.getId()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }
}
