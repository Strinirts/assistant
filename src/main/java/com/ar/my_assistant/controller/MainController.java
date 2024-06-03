package com.ar.my_assistant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping("/")
    public String addBookView(Model model) {
        // model.addAttribute("book", new Book());
        return "index";
    }
}
