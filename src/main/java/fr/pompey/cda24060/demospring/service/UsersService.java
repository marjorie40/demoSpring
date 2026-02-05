package fr.pompey.cda24060.demospring.service;

import fr.pompey.cda24060.demospring.repository.UsersRepository;
import fr.pompey.cda24060.demospring.model.Users;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Data
@Service
public class UsersService {

    @Autowired
    private UsersRepository usersRepository;

    public Optional<Users> getUsers(Integer id_users){
        return usersRepository.findById(id_users);
    }

    public Iterable<Users> getAllUsers(){
        return usersRepository.findAll();
    }

    public void deleteUsers (Integer idUsers) {
        usersRepository.deleteById(idUsers);
    }

    public Users saveUsers (Users users){
        return usersRepository.save(users);
    }
}
