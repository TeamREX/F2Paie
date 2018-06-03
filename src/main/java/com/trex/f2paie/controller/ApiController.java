package com.trex.f2paie.controller;

import com.trex.f2paie.Entity.Company;
import com.trex.f2paie.Entity.FicheCnss;
import com.trex.f2paie.Entity.RowFicheCnss;
import com.trex.f2paie.Service.CompanyService;
import com.trex.f2paie.Service.EmployeeService;
import com.trex.f2paie.Service.Fiche_pService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping("/api")
public class ApiController {

    @Autowired
    EmployeeService employeeService;
    @Autowired
    Fiche_pService fiche_pService;
    @Autowired
    CompanyService companyService;

    @RequestMapping("/api1")
    public String api1(){
        return "ok test";
    }

    @RequestMapping("/getSalary/{poste}/{grade}/{admin}")
    public HashMap getEmpSalary(@PathVariable String poste, @PathVariable String grade, @PathVariable String admin){
        HashMap<String,Double> result = new HashMap<>();
        if (poste.equals("") || poste.equals("undefined"))
            poste="1";
        if (grade.equals("") || grade.equals("undefined"))
            grade="1";
        if (admin.equals("") || admin.equals("undefined"))
            admin="1";

        List<Integer> list = employeeService.find_salaire_from_xls(Integer.parseInt(poste), Integer.parseInt(grade), Integer.parseInt(admin) );
        double salary =  (double) list.get(0)/1000  ;
        double hour =  (double) list.get(1)/1000  ;
        result.put("salaire", salary );
        result.put("heure",hour);

        return result ;
    }

    @RequestMapping("/disconnect")
    public HashMap disconnect( HttpServletRequest request){
        HashMap<String,String> result = new HashMap<>();

        request.getSession().removeAttribute("company");
            result.put("status","success");

        return result;
    }

    @RequestMapping("/verifyPWDcompany/{id}/{pwd}")
    public HashMap verifyPWDcompany(@PathVariable Integer id, @PathVariable String pwd, HttpServletRequest request){
        HashMap<String,String> result = new HashMap<>();
        Company company = companyService.getCompany(id);

        if (company != null && company.getPassword().equals(pwd) ){
            request.getSession().setAttribute("company", company);
            result.put("status","success");
        }else{
            result.put("status","error");
        }

        return result;
    }
}
