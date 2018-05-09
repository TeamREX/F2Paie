package com.trex.f2paie.controller;

import com.trex.f2paie.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping("/api")
public class ApiController {

    @Autowired
    EmployeeService employeeService;

    @RequestMapping("/api1")
    public String api1(){
        return "ok test";
    }

    @RequestMapping("/getSalary/{poste}/{grade}/{admin}")
    public HashMap getEmpSalary(@PathVariable String poste, @PathVariable String grade, @PathVariable String admin){
        HashMap<String,Integer> result = new HashMap<>();
        if (poste.equals(""))
            poste="0";
        if (grade.equals(""))
            grade="0";
        if (admin.equals(""))
            admin="0";

        List<Integer> list = employeeService.find_salaire_from_xls(poste, grade, admin);
        result.put("salaire",list.get(0));
        result.put("heure",list.get(1));

        return result ;
    }
}
