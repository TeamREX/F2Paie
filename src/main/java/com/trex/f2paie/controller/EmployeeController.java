package com.trex.f2paie.controller;

import com.trex.f2paie.Entity.Employee;
import com.trex.f2paie.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.ArrayList;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @RequestMapping("/add")
    public ModelAndView ajout_employe(){
        return new ModelAndView("employee_add", "employee", new Employee());
    }

    @RequestMapping("/list")
    public String list_employe( ModelMap model){

        ArrayList<Employee> employees = (ArrayList<Employee>) employeeService.getAllEmployees();

        System.out.println("emp : "+employees+" number : "+employees.size());

        model.addAttribute("employees", employees);
        return"employee_list";
    }

    @RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("employee")Employee employee,
                         BindingResult result, ModelMap model){
        if (result.hasErrors()) {
            return "error";
        }
        employeeService.addEmployee(employee);
        ArrayList<Employee> employees = (ArrayList<Employee>) employeeService.getAllEmployees();

        System.out.println("emp : "+employees+" number : "+employees.size());

        model.addAttribute("employees", employees);


        return "employee_list";
    }

}
