package fr.pompey.cda24060.demospring.model;

import jakarta.persistence.*;
import lombok.Data;

@Data // lombok
@Entity // creation d'une entite
@Table(name="users") // lié a la table de la bdd (bed_pizza)
public class Users {
    @Id // clé primaire
    @Column(name="id_user") // lié a la colonne id
    @GeneratedValue(strategy=GenerationType.IDENTITY) //auto increment
    private Integer id_user;

    @Column(name="id_admin")
    private Integer id_admin;

    @Column(name="id_role")
    private Integer id_role;

    @Column(name="id_address")
    private Integer id_address;

    @Column(name="firstname") //lié a la colonne de la table (pas mandatory)
    private String firstname;

    @Column(name="lastname") //lié a la colonne de la table (pas mandatory)
    private String lastname;

    @Column(name="phone")
    private String phone;

    @Column(name="email")
    private String email;

    @Column (name="password_hash")
    private String password_hash;

    @Column(name="is_deleted")
    private Boolean is_deleted;
}
