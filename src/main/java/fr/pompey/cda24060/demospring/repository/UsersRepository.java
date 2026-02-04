package fr.pompey.cda24060.demospring.repository;

import fr.pompey.cda24060.demospring.model.Users;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersRepository extends CrudRepository<Users, Integer> {

    // pas de code car @Repository nous donne acces a un CRUD
}
