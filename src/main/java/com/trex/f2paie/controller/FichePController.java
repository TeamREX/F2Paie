package com.trex.f2paie.controller;

import com.trex.f2paie.Entity.Fiche_P;
import com.trex.f2paie.Service.CompanyService;
import com.trex.f2paie.Service.EmployeeService;
import com.trex.f2paie.Service.Fiche_pService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
@RequestMapping("/ficheP")
public class FichePController {

    @Autowired
    EmployeeService employeeService;
    @Autowired
    CompanyService companyService;
    @Autowired
    Fiche_pService fiche_pService;

    @RequestMapping("/add/{employee}")
    public ModelAndView ajout_fiche(@PathVariable(value = "employee") Integer employee){
        ModelAndView modelAndView = new ModelAndView("ficheP_add", "ficheP", new Fiche_P());
        modelAndView.addObject("employee",employeeService.getEmployee(employee));
        return modelAndView;
    }


    @RequestMapping(value = "/addFiche", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("ficheP")Fiche_P fiche_p,
                         BindingResult result, ModelMap model){
        if (result.hasErrors()) {
            return "error";
        }

        fiche_pService.addFicheP(fiche_p);


        return "redirect:/ficheP/list/"+fiche_p.getEmployee().getId();
    }

    @RequestMapping("/list")
    public ModelAndView list_fiche(){
        ModelAndView modelAndView = new ModelAndView("ficheP_list", "fiches", fiche_pService.getAllFicheP());
        return modelAndView;
    }

    @RequestMapping("/list/{employee}")
    public ModelAndView list_ficheByEmployee(@PathVariable(value = "employee") Integer employee){
        ModelAndView modelAndView = new ModelAndView("ficheP_list", "fiches", fiche_pService.findByEmployee_Id(employee));
        modelAndView.addObject("employee",employeeService.getEmployee(employee)) ;
        return modelAndView;
    }

    @RequestMapping("/show/{id}")
    public String list_employee( @PathVariable Integer id, ModelMap model){

        Fiche_P fiche_p =  fiche_pService.getFicheP(id);

        System.out.println(fiche_p);

        model.addAttribute("ficheP",fiche_p);
        model.addAttribute("employee",fiche_p.getEmployee());
        return"ficheP_show";
    }

    @RequestMapping("/remove/{fiche}")
    public String delete_ficheP(@PathVariable int fiche){
        int idEmp = fiche_pService.getFicheP(fiche).getEmployee().getId() ;
            fiche_pService.deleteFicheP(fiche);

        return "redirect:/ficheP/list/"+idEmp;
    }

}
