package com.trex.f2paie.Entity;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

@Entity
@Table(name = "company")
public class Company extends Auditable{

    /**
     *
     * @author Yassine
     */

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY )
    private Integer id;

    @Column(name = "nom")
    private String nom;

    @Column(name = "mf")
    private String mf;

    @Column(name = "type")
    private String type;

    @Column(name = "chiffre_affaire")
    private String chiffre_affaire;

    @Column(name = "adresse")
    private String adresse;

    @Column(name = "description")
    private String description;

    @Column(name = "date")
    private String date;

    @Column(name = "cnss")
    private String cnss;

    @Column(name = "phone")
    private String phone;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

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

    public String getMf() {
        return mf;
    }

    public void setMf(String mf) {
        this.mf = mf;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getChiffre_affaire() {
        return chiffre_affaire;
    }

    public void setChiffre_affaire(String chiffre_affaire) {
        this.chiffre_affaire = chiffre_affaire;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getDescription() {
        return description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCnss() {
        return cnss;
    }

    public void setCnss(String cnss) {
        this.cnss = cnss;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Company{" + "id=" + id +", nom='" + nom + '\'' +'}';
    }
}
