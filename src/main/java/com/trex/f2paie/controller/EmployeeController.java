package com.trex.f2paie.controller;

import com.trex.f2paie.Entity.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
@RequestMapping("/employee")
public class EmployeeController {


    @RequestMapping("/add")
    public ModelAndView ajout_employe(){
        return new ModelAndView("employee_add", "employee", new Employee());
    }

    @RequestMapping("/list")
    public String list_employe(){
        return"employee_list";
    }

    @RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("employee")Employee employee,
                         BindingResult result, ModelMap model){
       /* if (result.hasErrors()) {
            return "error";
        }*/
        model.addAttribute("nom", employee.getNom());
        model.addAttribute("prenom", employee.getPrenom());
        model.addAttribute("id", employee.getId());
        return "employee_list";
    }

}
