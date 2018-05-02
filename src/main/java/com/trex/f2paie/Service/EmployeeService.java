package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Employee;

import java.util.List;

public interface EmployeeService {

    int addEmployee(Employee employee);
    int editEmployee(Employee employee);
    Employee getEmployee(Integer empID);
    List<Employee> getAllEmployees();
    int removeEmployee(Integer empID);

}
