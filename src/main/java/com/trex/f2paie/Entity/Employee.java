package com.trex.f2paie.Entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

@Entity
@Table(name = "employee")
public class Employee extends Auditable {

    /**
     *
     * @author Yassine
     */

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY )
        private Integer id;

    @Column(name = "nom")
        private String nom;

    @Column(name = "prenom")
        private String prenom;

    @Column(name = "cin")
        private String cin;

    @Column(name = "phone")
    private String phone;

    @Column(name = "date_naiss")
        private String dateNaiss;

    @Column(name = "date_recrutement")
    private String dateRecrutement;

    @Column(name = "situation")
        private String situation;

    @Column(name = "n_enfants")
        private Integer nEnfants ;

    @Column(name = "poste")
        private String poste  ;

    @Column(name = "poste_name")
    private String posteName  ;

    @Column(name = "r_admin")
        private Integer r_admin ;

    @Column(name = "grade")
        private Integer grade ;

    @Column(name = "cnss")
        private String cnss ;

    @Column(name = "salaire")
    private String salaire ;

    @Column(name = "salaire_h")
    private String salaireH ;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "company_id")
        private Company company;


    public Employee() {}

    public Employee(Integer id) {
        this.id = id;
    }

    public Employee(Integer id, String nom, String prenom, String cin, String dateNaiss, String situation, Integer nEnfants, String poste, Integer r_admin, Integer grade, String cnss) {
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

        public Integer getR_admin() {
            return r_admin;
        }

        public void setR_admin(Integer r_admin) {
            this.r_admin = r_admin;
        }

        public Integer getGrade() {
            return grade;
        }

        public void setGrade(Integer grade) {
            this.grade = grade;
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

    public Integer getnEnfants() {
        return nEnfants;
    }

    public void setnEnfants(Integer nEnfants) {
        this.nEnfants = nEnfants;
    }

    public String getSalaire() {
        return salaire;
    }

    public void setSalaire(String salaire) {
        this.salaire = salaire;
    }

    public String getPosteName() {
        return posteName;
    }

    public void setPosteName(String posteName) {
        this.posteName = posteName;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public String getDateRecrutement() {
        return dateRecrutement;
    }

    public void setDateRecrutement(String dateRecrutement) {
        this.dateRecrutement = dateRecrutement;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSalaireH() {
        return salaireH;
    }

    public void setSalaireH(String salaireH) {
        this.salaireH = salaireH;
    }

    @Override
        public String toString() {
            return "Employee[ id=" + id + " ]";
        }


}
