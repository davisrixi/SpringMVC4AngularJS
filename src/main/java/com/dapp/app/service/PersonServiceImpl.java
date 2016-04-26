package com.dapp.app.service;

import com.dapp.app.model.Person;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/**
 * Created by davis on 4/25/16.
 */
public class PersonServiceImpl implements PersonService {

    private static final AtomicLong counter = new AtomicLong();
    private static List<Person> persons;


    public Person findById(long id) {
        return null;
    }

    public Person findByName(String name) {
        return null;
    }

    public void savePerson(Person person) {
        person.setId(counter.incrementAndGet());
        persons.add(person);
    }

    public void updatePerson(Person person) {

    }

    public void deletePersonById(long id) {

    }

    public List<Person> findAllPersons() {
        return null;
    }

    public void deleteAllPersons() {

    }

    public boolean isPersonExists(Person person) {
        return false;
    }
}
