package com.trex.f2paie.Entity;

import javax.persistence.*;

@Entity
@Table(name = "ouvrier")
public class Employee {

    /**
     *
     * @author Yassine
     */

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY )
        private int id;

    @Column(name = "nom")
        private String nom;

    @Column(name = "prenom")
        private String prenom;

    @Column(name = "cin", unique = true)
        private String cin;

    @Column(name = "date_naiss")
        private String dateNaiss;

    @Column(name = "situation")
        private String situation;

    @Column(name = "n_enfants")
        private int nEnfants ;

    @Column(name = "poste")
        private String poste  ;

    @Column(name = "r_admin")
        private int r_admin ;

    @Column(name = "grade")
        private int grade ;

    @Column(name = "cnss")
        private String cnss ;

        public String getCnss() {
            return cnss;
        }

        public void setCnss(String cnss) {
            this.cnss = cnss;
        }

        public String getPoste() {
            return poste;
        }

        public void setPoste(String poste) {
            this.poste = poste;
        }

        public int getR_admin() {
            return r_admin;
        }

        public void setR_admin(int r_admin) {
            this.r_admin = r_admin;
        }

        public int getGrade() {
            return grade;
        }

        public void setGrade(int grade) {
            this.grade = grade;
        }

        public Employee() {
        }

        public Employee(int id) {
            this.id = id;
        }

    public Employee(int id, String nom, String prenom, String cin, String dateNaiss, String situation, int nEnfants, String poste, int r_admin, int grade, String cnss) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.cin = cin;
        this.dateNaiss = dateNaiss;
        this.situation = situation;
        this.nEnfants = nEnfants;
        this.poste = poste;
        this.r_admin = r_admin;
        this.grade = grade;
        this.cnss = cnss;
    }

    public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getNom() {
            return nom;
        }

        public void setNom(String nom) {
            this.nom = nom;
        }

        public String getPrenom() {
            return prenom;
        }

        public void setPrenom(String prenom) {
            this.prenom = prenom;
        }

        public String getCin() {
            return cin;
        }

        public void setCin(String cin) {
            this.cin = cin;
        }

        public String getDateNaiss() {
            return dateNaiss;
        }

        public void setDateNaiss(String dateNaiss) {
            this.dateNaiss = dateNaiss;
        }

        public String getSituation() {
            return situation;
        }

        public void setSituation(String situation) {
            this.situation = situation;
        }

        public int getNEnfants() {
            return nEnfants;
        }

        public void setNEnfants(int nEnfants) {
            this.nEnfants = nEnfants;
        }





        @Override
        public String toString() {
            return "Employee[ id=" + id + " ]";
        }


}
