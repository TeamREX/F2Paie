package com.trex.f2paie.controller;

import com.trex.f2paie.Entity.Leave;
import com.trex.f2paie.Service.EmployeeService;
import com.trex.f2paie.Service.LeaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/leave")
public class LeaveController {

    @Autowired
    LeaveService leaveService;
    @Autowired
    EmployeeService employeeService;

    @RequestMapping("/add/{empID}")
    public String ajout( @PathVariable Integer empID, ModelMap model){
        model.addAttribute("employee",employeeService.getEmployee(empID));
        model.addAttribute("leave",new Leave());
        return "leave_add";
    }

    @RequestMapping(value ="/addLeave", method = RequestMethod.POST)
    public String addLeave(@Valid @ModelAttribute("leave") Leave leave, BindingResult result, ModelMap model){
        if (result.hasErrors()) {
            return "error";
        }
        leaveService.addLeave(leave);
        return "redirect:/leave/list/"+leave.getEmployee().getId();
    }

    @RequestMapping("/edit")
    public String edit( ModelMap model){
        model.addAttribute("leave",new Leave());
        return "leave_show";
    }

    @RequestMapping("/editLeave")
    public String editLeave( @RequestParam Leave leave, ModelMap model){
        leaveService.editLeave(leave);
        return "redirect:/leave/list/"+leave.getEmployee().getId();
    }

    @RequestMapping("/list/{empID}")
    public String listLeave(@PathVariable Integer empID, ModelMap model){
        model.addAttribute("leaves",leaveService.getLeavesByEmployee(empID));
        model.addAttribute("employee",employeeService.getEmployee(empID));
        return "leave_list";
    }

    @RequestMapping("/show/{id}")
    public String list_employee( @PathVariable Integer id, ModelMap model){

        Leave leave =  leaveService.getLeaveById(id);

        System.out.println(leave);

        model.addAttribute("leave",leave);
        model.addAttribute("employee",leave.getEmployee());
        return"leave_show";
    }

    @RequestMapping("/delete/{idLeave}/{idEmp}")
    public String remove(@PathVariable Integer idLeave, @PathVariable Integer idEmp){
        leaveService.deleteLeave(idLeave);
        return "redirect:/leave/list/"+idEmp;
    }

}