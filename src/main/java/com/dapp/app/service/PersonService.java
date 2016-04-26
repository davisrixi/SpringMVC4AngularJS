package com.dapp.app.service;

import com.dapp.app.model.Person;

import java.util.List;

/**
 * Created by davis on 4/25/16.
 */
public interface PersonService {

    Person findById(long id);

    Person findByName(String name);

    void savePerson(Person person);

    void updatePerson(Person person);

    void deletePersonById(long id);

    List<Person> findAllPersons();

    void deleteAllPersons();

    public boolean isPersonExists(Person person);

}
