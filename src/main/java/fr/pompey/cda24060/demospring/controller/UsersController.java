package fr.pompey.cda24060.demospring.controller;

import fr.pompey.cda24060.demospring.model.Users;
import fr.pompey.cda24060.demospring.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
public class UsersController {

    @Autowired
    private UsersService usersService;

    @PostMapping("/users")
    public Users createUsers (@RequestBody Users users) {
        return usersService.saveUsers(users);
    }

    @GetMapping("/all-users")
    public Iterable<Users> getAllUsers(){
        return usersService.getAllUsers();
    }

    @GetMapping("/users/{id}")
    public Users getUserById (@PathVariable("id") Integer id){
        Optional<Users> users =usersService.getUsers(id);
        return users.orElse(null);
    }
    @PutMapping("/users/{id}")
    public Users updateUsers (@PathVariable("id") Integer id, @RequestBody Users users) {
        Optional<Users> usersOptional1 = usersService.getUsers(id);
        if (usersOptional1.isPresent()) {
            Users usersToUpdate1 = usersOptional1.get();

            String firstname = users.getFirstname();
            if (firstname != null) {
                usersToUpdate1.setFirstname(firstname);
            }
            String lastname = users.getLastname();
            if (lastname != null) {
                usersToUpdate1.setLastname(lastname);
            }
            usersService.saveUsers(usersToUpdate1);
            return usersToUpdate1;
        } else {
            return null;
        }

    }
    @DeleteMapping("/users/{id}")
    public void deleteUsers (@PathVariable("id") Integer id){
        usersService.deleteUsers(id);
    }
}

