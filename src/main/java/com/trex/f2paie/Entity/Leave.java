package com.trex.f2paie.Entity;

import javax.persistence.*;

/**
 *
 * @author Yassine
 */
@Entity
@Table(name = "absence")
public class Leave {

    @Id
    @GeneratedValue
    private Integer id;
    @Column(name = "type")
    private String type;
    @Column(name = "description")
    private String description;
    @Column(name = "start_date")
    private String startDate;
    @Column(name = "end_date")
    private String endDate;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employee_id")
    private Employee employee;
    @Column(name = "createdAt")
    private String createdAt;

    public Leave() {}

    public Leave(String type, String description, String startDate, String endDate, Employee employee, String createdAt) {
        this.type = type;
        this.description = description;
        this.startDate = startDate;
        this.endDate = endDate;
        this.employee = employee;
        this.createdAt = createdAt;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String start_date) {
        this.startDate = start_date;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String end_date) {
        this.endDate = end_date;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "Leave{" +
                "id=" + id +
                ", type='" + type + '\'' +
                ", description='" + description + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", employee=" + employee +
                ", createdAt='" + createdAt + '\'' +
                '}';
    }
}
