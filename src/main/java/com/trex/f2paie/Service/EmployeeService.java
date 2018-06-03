package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Employee;

import java.util.List;

public interface EmployeeService {

    int addEmployee(Employee employee);
    int editEmployee(Employee employee);
    Employee getEmployee(Integer empID);
    List<Employee> getAllEmployees();
    List<Employee> getEmployeesByCompany(Integer company);
    int removeEmployee(Integer empID);
    long countEmployee();
    List find_salaire_from_xls (int poste , int r_admin , int grade);

}
