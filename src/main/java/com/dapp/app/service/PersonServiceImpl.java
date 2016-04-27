package com.dapp.app.service;

import com.dapp.app.model.Person;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/**
 * Created by davis on 4/25/16.
 */
@Service("personService")
@Transactional
public class PersonServiceImpl implements PersonService {

    private static final AtomicLong counter = new AtomicLong();
    private static List<Person> persons;

    static{
        persons= populateDummyUsers();
    }


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
        return persons;
    }

    public void deleteAllPersons() {

    }

    public boolean isPersonExists(Person person) {
        return false;
    }

    private static List<Person> populateDummyUsers(){
        List<Person> users = new ArrayList<Person>();
        users.add(new Person(counter.incrementAndGet(),"Sam", "Witwicky", "sam@abc.com",30));
        users.add(new Person(counter.incrementAndGet(),"Karl", "Dawson", "sam@abc.com",30));

        return users;
    }
}
