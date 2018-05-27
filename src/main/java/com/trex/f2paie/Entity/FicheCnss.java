package com.trex.f2paie.Entity;

import java.util.List;

public class FicheCnss {

    private List<RowFicheCnss> rowFicheCnss;

    private double total;

    private String periode;

    private Company company;

    public List<RowFicheCnss> getRowFicheCnss() {
        return rowFicheCnss;
    }

    public void setRowFicheCnss(List<RowFicheCnss> rowFicheCnss) {
        this.rowFicheCnss = rowFicheCnss;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getPeriode() {
        return periode;
    }

    public void setPeriode(String periode) {
        this.periode = periode;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    @Override
    public String toString() {
        return "FicheCnss{" +
                ", RowFicheCnss=" + rowFicheCnss +
                ", total='" + total + '\'' +
                '}';
    }
}
