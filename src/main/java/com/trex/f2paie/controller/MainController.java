package com.trex.f2paie.controller;

import com.trex.f2paie.Service.CompanyService;
import com.trex.f2paie.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @Autowired
    EmployeeService employeeService;
    @Autowired
    CompanyService companyService;

    @RequestMapping("/index")
    public String index(ModelMap modelMap){
        modelMap.addAttribute("emp_nbr",employeeService.countEmployee());
        modelMap.addAttribute("cmp_nbr",companyService.countCompany());
        return"index";
    }

}
