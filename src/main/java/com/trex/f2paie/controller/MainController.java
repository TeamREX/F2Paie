package com.trex.f2paie.controller;

import com.trex.f2paie.Service.CompanyService;
import com.trex.f2paie.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
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
        // Get authenticated user name from SecurityContext
        SecurityContext context = SecurityContextHolder.getContext();

        modelMap.addAttribute("emp_nbr",employeeService.countEmployee());
        modelMap.addAttribute("cmp_nbr",companyService.countCompany());
        modelMap.addAttribute("message", "You are logged in as "
                + context.getAuthentication().getName());
        return"index";
    }

    @RequestMapping("/login")
    public String login(ModelMap modelMap){
        // Get authenticated user name from SecurityContext
        SecurityContext context = SecurityContextHolder.getContext();
        modelMap.addAttribute("message", "You are logged in as "
                + context.getAuthentication().getName());
        return"login_company";
    }


}
