package com.trex.f2paie.Entity;

public class RowFicheCnss {

    private Employee employee;
    private String salImp1="0,000";
    private String salImp2="0,000";
    private String salImp3="0,000";
    private double total;

    public RowFicheCnss(){}
    public RowFicheCnss(Employee employee, String salImp1, String salImp2, String salImp3, double total) {
        this.employee = employee;
        this.salImp1 = salImp1;
        this.salImp2 = salImp2;
        this.salImp3 = salImp3;
        this.total = total;
    }


    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
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


    @Override
    public String toString() {
        return "RowFicheCnss{" +
                "Employee='" + employee + '\'' +
                ", salImp1='" + salImp1 + '\'' +
                ", salImp2='" + salImp2 + '\'' +
                ", salImp3='" + salImp3 + '\'' +
                ", total=" + total +
                '}';
    }
}
