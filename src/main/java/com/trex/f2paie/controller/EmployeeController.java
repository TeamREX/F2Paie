package com.trex.f2paie.controller;

import com.trex.f2paie.Entity.Company;
import com.trex.f2paie.Entity.Employee;
import com.trex.f2paie.Service.CompanyService;
import com.trex.f2paie.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.*;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;
    @Autowired
    CompanyService companyService;
// /***Employee and type post -> Call to service ,other wise -> show page

    @RequestMapping("/add")
    public ModelAndView ajout_employe(){
        ModelAndView modelAndView = new ModelAndView("employee_add", "employee", new Employee());
        modelAndView.addObject("companies",companyService.getAllCompanies());
        return modelAndView;
    }

    @RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("employee")Employee employee,
                         BindingResult result, ModelMap model){
        if (result.hasErrors()) {
            return "error";
        }
        if(employee.getR_admin()== null)
            employee.setR_admin(0);

        employeeService.addEmployee(employee);

        return "redirect:/employee/list";
    }

    @RequestMapping("/list")
    public String list_employee( ModelMap model, HttpServletRequest request){
        List<String> list1 = new ArrayList<String>();
        List<String> list2 = new ArrayList<String>();
        Collections.copy(list1, list2);
        Company company = (Company) request.getSession().getAttribute("company");
        if (company == null){
            return"redirect:/";
        }

        ArrayList<Employee> employees = (ArrayList<Employee>) employeeService.getEmployeesByCompany(company.getId());

        System.out.println("emp : "+employees+" number : "+employees.size());

        model.addAttribute("employees", employees);
        return"employee_list";
    }

    @RequestMapping("/show/{id}")
    public String show_employee( @PathVariable int id, ModelMap model){

        Employee employee =  employeeService.getEmployee(id);

        DateTimeFormatter df = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate fullBirthday = LocalDate.parse(employee.getDateNaiss(),df);
        LocalDate now = LocalDate.now();
        int age = Period.between(fullBirthday, now).getYears();

        System.out.println("emp : "+employee);

        model.addAttribute("employee", employee);
        model.addAttribute("age", age);
        model.addAttribute("companies",companyService.getAllCompanies());
        return"employee_show";
    }

    @RequestMapping(value = "/editEmployee", method = RequestMethod.POST)
    public String edit(@Valid @ModelAttribute("employee")Employee employee,
                         BindingResult result, ModelMap model){
        if (result.hasErrors()) {
            return "error";
        }
        if(employee.getR_admin()== null)
            employee.setR_admin(0);

        employeeService.editEmployee(employee);

        return "redirect:/employee/list";
    }

    @RequestMapping(value = "/removeEmployee/{id}", method = RequestMethod.GET)
    public String remove(@PathVariable int id, ModelMap model){

        employeeService.removeEmployee(id);

        return "redirect:/employee/list";
    }

}
