package com.trex.f2paie.Entity;


import javax.persistence.*;

/**
 *
 * @author Yassine
 */
@Entity
@Table(name = "fichier")
public class Fiche_P extends Auditable{

    @Id
    @GeneratedValue
        private Integer id;

    @Column(name = "id_ovr")
        private Integer id_ovr;

    @Column(name = "month")
        private Integer month;

    @Column(name = "year")
        private Integer year;

    @Column(name = "sal_base")
        private String sal_base;

    @Column(name = "jr_trv")
        private Integer jr_trv;

    @Column(name = "jr_fer")
        private Integer jr_fer;

    @Column(name = "pr_heure")
        private String pr_heure;

    @Column(name = "nbr_jeure")
        private Integer nbr_jeure;

    @Column(name = "accompte")
        private String accompte;

    @Column(name = "pr_trans")
        private String pr_trans;

    @Column(name = "pr_couf")
        private String pr_couf;

    @Column(name = "pr_rnd")
        private String pr_rnd;

    @Column(name = "mnt_cnss")
        private String mnt_cnss;

    @Column(name = "IR")
        private String ir;

    @Column(name = "date_pay")
        private String date_pay;

    @Column(name = "b_cnss")
        private String b_cnss;

    @Column(name = "b_ret")
        private String b_ret;

    @Column(name = "sal_net")
        private String sal_net;

    @Column(name = "netlettre")
        private String netlettre;

        public Fiche_P() {
        }

        public Fiche_P(Integer id) {
            this.id = id;
        }


    @Override
        public String toString() {
            return "Fiche_P[ id=" + id + " ]";
        }

}