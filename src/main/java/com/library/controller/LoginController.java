package com.library.controller;

import com.library.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author 云言月
 * 2024/5/16 17:32
 */
@RestController
@RequestMapping("/admin")
public class UserController {
    @Autowired
    private LoginService adminService;

    @PostMapping("/login")
    public String login(@RequestParam ("username") String username, @RequestParam ("password")String password) {
        return adminService.login(username, password);
    }


    //@PutMapping("/update")
    //public String update(String username, String password) {
    //    return adminService.update(username, password);
    //}


}
