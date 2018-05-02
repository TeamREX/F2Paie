package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Employee;
import com.trex.f2paie.Repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class EmployeeServiceImp implements EmployeeService {

    @Autowired
    EmployeeRepository employeeRepository;

    @Override
    public int addEmployee(Employee employee) {
        if ( employeeRepository.save(employee) != null )
        return 1;
        else
        return 0;
    }

    @Override
    public int editEmployee(Employee employee) {
        if ( employeeRepository.save(employee) != null )
            return 1;
        else
            return 0;
    }

    @Override
    public Employee getEmployee(Integer empID) {
        return employeeRepository.findOne(empID);
    }

    @Override
    public List<Employee> getAllEmployees() {
        ArrayList<Employee> employees = new ArrayList<>();
        employeeRepository.findAll().forEach(employees::add);
        return employees;
    }

    @Override
    public int removeEmployee(Integer empID) {
        employeeRepository.delete(empID);
            return 1;
    }


}
