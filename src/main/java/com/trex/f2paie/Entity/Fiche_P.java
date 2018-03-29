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
        private Integer idOvr;
    @Column(name = "month")
        private Integer month;
    @Column(name = "year")
        private Integer year;
    @Column(name = "name_ovr")
        private String nameOvr;
    @Column(name = "sal_base")
        private String salBase;
    @Column(name = "jr_trv")
        private Integer jrTrv;
    @Column(name = "jr_fer")
        private Integer jrFer;
    @Column(name = "pr_heure")
        private String prHeure;
    @Column(name = "nbr_jeure")
        private Integer nbrHeure;
    @Column(name = "accompte")
        private String accompte;
    @Column(name = "pr_trans")
        private String prTrans;
    @Column(name = "pr_couf")
        private String prCouf;
    @Column(name = "pr_rnd")
        private String prRnd;
    @Column(name = "mnt_cnss")
        private String mntCnss;
    @Column(name = "IR")
        private String ir;
    @Column(name = "date_pay")
        private String datePay;
    @Column(name = "b_cnss")
        private String bCnss;
    @Column(name = "b_ret")
        private String bRet;
    @Column(name = "sal_net")
        private String salNet;
    @Column(name = "netlettre")
        private String netLettre;

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

        public int getIdOvr() {
            return idOvr;
        }

        public void setIdOvr(int idOvr) {
            this.idOvr = idOvr;
        }

        public int getMonth() {
            return month;
        }

        public void setMonth(int month) {
            this.month = month;
        }

        public int getYear() {
            return year;
        }

        public void setYear(int year) {
            this.year = year;
        }

        public String getNameOvr() {
            return nameOvr;
        }

        public void setNameOvr(String nameOvr) {
            this.nameOvr = nameOvr;
        }



        public int getJrTrv() {
            return jrTrv;
        }

        public void setJrTrv(int jrTrv) {
            this.jrTrv = jrTrv;
        }

        public int getJrFer() {
            return jrFer;
        }

        public void setJrFer(int jrFer) {
            this.jrFer = jrFer;
        }


        public int getNbrHeure() {
            return nbrHeure;
        }

        public void setNbrHeure(int nbrHeure) {
            this.nbrHeure = nbrHeure;
        }


        public String getDatePay() {
            return datePay;
        }

        public void setDatePay(String datePay) {
            this.datePay = datePay;
        }

        public String getSalBase() {
            return salBase;
        }

        public void setSalBase(String salBase) {
            this.salBase = salBase;
        }

        public String getPrHeure() {
            return prHeure;
        }

        public void setPrHeure(String prHeure) {
            this.prHeure = prHeure;
        }

        public String getAccompte() {
            return accompte;
        }

        public void setAccompte(String accompte) {
            this.accompte = accompte;
        }

        public String getPrTrans() {
            return prTrans;
        }

        public void setPrTrans(String prTrans) {
            this.prTrans = prTrans;
        }

        public String getPrCouf() {
            return prCouf;
        }

        public void setPrCouf(String prCouf) {
            this.prCouf = prCouf;
        }

        public String getPrRnd() {
            return prRnd;
        }

        public void setPrRnd(String prRnd) {
            this.prRnd = prRnd;
        }

        public String getMntCnss() {
            return mntCnss;
        }

        public void setMntCnss(String mntCnss) {
            this.mntCnss = mntCnss;
        }

        public String getIr() {
            return ir;
        }

        public void setIr(String ir) {
            this.ir = ir;
        }

        public String getbCnss() {
            return bCnss;
        }

        public void setbCnss(String bCnss) {
            this.bCnss = bCnss;
        }

        public String getbRet() {
            return bRet;
        }

        public void setbRet(String bRet) {
            this.bRet = bRet;
        }

        public String getSalNet() {
            return salNet;
        }

        public void setSalNet(String salNet) {
            this.salNet = salNet;
        }

        public String getNetLettre() {
            return netLettre;
        }

        public void setNetLettre(String netLettre) {
            this.netLettre = netLettre;
        }

        @Override
        public String toString() {
            return "Fiche_P[ id=" + id + " ]";
        }

}