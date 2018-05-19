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
    @GeneratedValue (strategy = GenerationType.IDENTITY )
        private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employee_id")
    private Employee employee;

    @Column(name = "month")
        private Integer month;

    @Column(name = "year")
        private Integer year;

    @Column(name = "trimestre")
    private Integer trimestre;

    @Column(name = "base_salary")
        private String baseSalary;

    @Column(name = "day_salary")
    private String daySalary;

    @Column(name = "work_days")
    private Integer workDays;

    @Column(name = "worked_days")
        private Integer workedDays;

    @Column(name = "extra_days")
    private Integer extraDays;

    @Column(name = "extra_hours")
        private Integer extraHours;

    @Column(name = "price_houre")
        private String priceHoure;

    @Column(name = "accompte")
        private String accompte;

    @Column(name = "prime_presence")
    private String primePresence;

    @Column(name = "prime_transport")
        private String primeTransport;

    @Column(name = "prime_couffin")
        private String primeCouffin;

    @Column(name = "prime_rondement")
        private String primeRondement;

    @Column(name = "montant_cnss")
        private String mntCnss;

    @Column(name = "IR")
        private String ir;

    @Column(name = "date_pay")
        private String datePayement;

    @Column(name = "base_cnss")
        private String baseCnss;

    @Column(name = "base_retenue")
        private String baseRetenue;

    @Column(name = "net_salary")
        private String netSalary;

    @Column(name = "brut_salary")
    private String brutSalary;

    @Column(name = "im_salary")
    private String imSalary;

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

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
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

    public String getBaseSalary() {
        return baseSalary;
    }

    public void setBaseSalary(String baseSalary) {
        this.baseSalary = baseSalary;
    }

    public Integer getWorkedDays() {
        return workedDays;
    }

    public void setWorkedDays(Integer workedDays) {
        this.workedDays = workedDays;
    }

    public Integer getExtraDays() {
        return extraDays;
    }

    public void setExtraDays(Integer extraDays) {
        this.extraDays = extraDays;
    }

    public Integer getExtraHours() {
        return extraHours;
    }

    public void setExtraHours(Integer extraHours) {
        this.extraHours = extraHours;
    }

    public String getPriceHoure() {
        return priceHoure;
    }

    public void setPriceHoure(String priceHoure) {
        this.priceHoure = priceHoure;
    }

    public String getAccompte() {
        return accompte;
    }

    public void setAccompte(String accompte) {
        this.accompte = accompte;
    }

    public String getPrimeTransport() {
        return primeTransport;
    }

    public void setPrimeTransport(String primeTransport) {
        this.primeTransport = primeTransport;
    }

    public String getPrimeCouffin() {
        return primeCouffin;
    }

    public void setPrimeCouffin(String primeCouffin) {
        this.primeCouffin = primeCouffin;
    }

    public String getPrimeRondement() {
        return primeRondement;
    }

    public void setPrimeRondement(String primeRondement) {
        this.primeRondement = primeRondement;
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

    public String getDatePayement() {
        return datePayement;
    }

    public void setDatePayement(String datePayement) {
        this.datePayement = datePayement;
    }

    public String getBaseCnss() {
        return baseCnss;
    }

    public void setBaseCnss(String baseCnss) {
        this.baseCnss = baseCnss;
    }

    public String getBaseRetenue() {
        return baseRetenue;
    }

    public void setBaseRetenue(String baseRetenue) {
        this.baseRetenue = baseRetenue;
    }

    public String getNetSalary() {
        return netSalary;
    }

    public void setNetSalary(String netSalary) {
        this.netSalary = netSalary;
    }

    public String getBrutSalary() {
        return brutSalary;
    }

    public void setBrutSalary(String brutSalary) {
        this.brutSalary = brutSalary;
    }

    public String getDaySalary() {
        return daySalary;
    }

    public void setDaySalary(String daySalary) {
        this.daySalary = daySalary;
    }

    public Integer getWorkDays() {
        return workDays;
    }

    public void setWorkDays(Integer workDays) {
        this.workDays = workDays;
    }

    public Integer getTrimestre() {
        return trimestre;
    }

    public void setTrimestre(Integer trimestre) {
        this.trimestre = trimestre;
    }

    public String getPrimePresence() {
        return primePresence;
    }

    public void setPrimePresence(String primePresence) {
        this.primePresence = primePresence;
    }

    public String getImSalary() {
        return imSalary;
    }

    public void setImSalary(String imSalary) {
        this.imSalary = imSalary;
    }

    @Override
        public String toString() {
            return "Fiche_P[ id=" + id + " ]";
        }

}