package ru.serdeveloper.skllsApi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.serdeveloper.skllsApi.repository.UserRepo;

/**
 * @author Serdyuk S.B.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserRepo userRepo;

    @GetMapping
    private String userList(Model model) {
        model.addAttribute("users", userRepo.findAll());

        return "userList";
    }
}
