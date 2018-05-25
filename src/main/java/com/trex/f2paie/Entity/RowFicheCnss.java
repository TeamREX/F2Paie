package com.trex.f2paie.Entity;

public class RowFicheCnss {

    private String Employee;
    private String salImp1;
    private String salImp2;
    private String salImp3;
    private double total;

    public RowFicheCnss(){};
    public RowFicheCnss(String employee, String salImp1, String salImp2, String salImp3, double total) {
        Employee = employee;
        this.salImp1 = salImp1;
        this.salImp2 = salImp2;
        this.salImp3 = salImp3;
        this.total = total;
    }

    public String getEmployee() {
        return Employee;
    }

    public void setEmployee(String employee) {
        Employee = employee;
    }

    public String getSalImp1() {
        return salImp1;
    }

    public void setSalImp1(String salImp1) {
        this.salImp1 = salImp1;
    }

    public String getSalImp2() {
        return salImp2;
    }

    public void setSalImp2(String salImp2) {
        this.salImp2 = salImp2;
    }

    public String getSalImp3() {
        return salImp3;
    }

    public void setSalImp3(String salImp3) {
        this.salImp3 = salImp3;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}
