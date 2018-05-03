package com.trex.f2paie.controller;

import com.trex.f2paie.Entity.Company;
import com.trex.f2paie.Service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/company")
public class CompanyController {
    @Autowired
    CompanyService companyService;


    @RequestMapping("/add")
    public ModelAndView ajout_company(){
        return new ModelAndView("company_add", "company", new Company());
    }

    @RequestMapping("/list")
    public String list_company( ModelMap model){
        List<String> list1 = new ArrayList<String>();
        List<String> list2 = new ArrayList<String>();
        Collections.copy(list1, list2);



        ArrayList<Company> companies = (ArrayList<Company>) companyService.getAllCompanies();

        System.out.println("cmp : "+companies+" number : "+companies.size());

        model.addAttribute("companies", companies);
        return"company_list";
    }


}