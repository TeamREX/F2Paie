package com.trex.f2paie.controller;

import com.trex.f2paie.Entity.User;
import com.trex.f2paie.Service.UserService;
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
import java.util.ArrayList;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/add")
    public ModelAndView ajout_user(){
        ModelAndView modelAndView = new ModelAndView("user_add", "user", new User());
        return modelAndView;
    }

    @RequestMapping("/admin/add")
    public ModelAndView ajout_admin(){
        ModelAndView modelAndView = new ModelAndView("user_addadmin", "user", new User());
        return modelAndView;
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("user")User user,
                         BindingResult result, ModelMap model){
        if (result.hasErrors()) {
        return "error";
    }

        userService.saveUser(user);

        return "redirect:/user/list";
}

    @RequestMapping("/list")
    public String list(ModelMap model){

        ArrayList<User> users = (ArrayList<User>) userService.findUsers();

        model.addAttribute("users", users);
        return"user_list";
    }

    @RequestMapping("/show/{id}")
    public String show_user(@PathVariable int id, ModelMap model){

        User user = userService.findUser(id);

        model.addAttribute("user", user);
        return"user_show";
    }

    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public String edit(@Valid @ModelAttribute("user")User user,
                       BindingResult result, ModelMap model){
        if (result.hasErrors()) {
            return "error";
        }
        userService.saveUser(user);

        return "redirect:/user/list";
    }

    @RequestMapping(value = "/remove/{id}", method = RequestMethod.GET)
    public String remove(@PathVariable int id, ModelMap model){

        userService.remove(id);

        return "redirect:/user/list";
    }
}
