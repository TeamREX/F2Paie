package com.trex.f2paie.Entity;


import javax.persistence.*;

/**
 *
 * @author Yassine
 */
@Entity
@Table(name = "fichier")
public class Fiche_P {

    @Id
    @GeneratedValue
        private Integer id;
    @Column(name = "id_ovr")
        private Integer id_ovr;
    @Column(name = "month")
        private Integer month;
    @Column(name = "year")
        private Integer year;
    @Column(name = "name_ovr")
        private String name_ovr;
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


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId_ovr() {
        return id_ovr;
    }

    public void setId_ovr(Integer id_ovr) {
        this.id_ovr = id_ovr;
    }

    public Integer getMonth() {
        return month;
    }

    public void setMonth(Integer month) {
        this.month = month;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getName_ovr() {
        return name_ovr;
    }

    public void setName_ovr(String name_ovr) {
        this.name_ovr = name_ovr;
    }

    public String getSal_base() {
        return sal_base;
    }

    public void setSal_base(String sal_base) {
        this.sal_base = sal_base;
    }

    public Integer getJr_trv() {
        return jr_trv;
    }

    public void setJr_trv(Integer jr_trv) {
        this.jr_trv = jr_trv;
    }

    public Integer getJr_fer() {
        return jr_fer;
    }

    public void setJr_fer(Integer jr_fer) {
        this.jr_fer = jr_fer;
    }

    public String getPr_heure() {
        return pr_heure;
    }

    public void setPr_heure(String pr_heure) {
        this.pr_heure = pr_heure;
    }

    public Integer getNbr_jeure() {
        return nbr_jeure;
    }

    public void setNbr_jeure(Integer nbr_jeure) {
        this.nbr_jeure = nbr_jeure;
    }

    public String getAccompte() {
        return accompte;
    }

    public void setAccompte(String accompte) {
        this.accompte = accompte;
    }

    public String getPr_trans() {
        return pr_trans;
    }

    public void setPr_trans(String pr_trans) {
        this.pr_trans = pr_trans;
    }

    public String getPr_couf() {
        return pr_couf;
    }

    public void setPr_couf(String pr_couf) {
        this.pr_couf = pr_couf;
    }

    public String getPr_rnd() {
        return pr_rnd;
    }

    public void setPr_rnd(String pr_rnd) {
        this.pr_rnd = pr_rnd;
    }

    public String getMnt_cnss() {
        return mnt_cnss;
    }

    public void setMnt_cnss(String mnt_cnss) {
        this.mnt_cnss = mnt_cnss;
    }

    public String getIr() {
        return ir;
    }

    public void setIr(String ir) {
        this.ir = ir;
    }

    public String getDate_pay() {
        return date_pay;
    }

    public void setDate_pay(String date_pay) {
        this.date_pay = date_pay;
    }

    public String getB_cnss() {
        return b_cnss;
    }

    public void setB_cnss(String b_cnss) {
        this.b_cnss = b_cnss;
    }

    public String getB_ret() {
        return b_ret;
    }

    public void setB_ret(String b_ret) {
        this.b_ret = b_ret;
    }

    public String getSal_net() {
        return sal_net;
    }

    public void setSal_net(String sal_net) {
        this.sal_net = sal_net;
    }

    public String getNetlettre() {
        return netlettre;
    }

    public void setNetlettre(String netlettre) {
        this.netlettre = netlettre;
    }

    @Override
        public String toString() {
            return "Fiche_P[ id=" + id + " ]";
        }

}