package com.trex.f2paie.Entity;
import javax.persistence.*;

@Entity
@Table(name = "company")
public class Company {

    /**
     *
     * @author Yassine
     */

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY )
    private Integer id;

    @Column(name = "nom")
    private String nom;

    public Company() {
    }

    public Company(Integer id, String nom) {
        this.nom = nom;
        this.id=id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    @Override
    public String toString() {
        return "Company{" + "id=" + id +", nom='" + nom + '\'' +'}';
    }
}
