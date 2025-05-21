package org.example.project2.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {

    @GetMapping("/home")
    public String hello(Model model) {
        var name = "Bill Gates";
        model.addAttribute("userName", name);
        return "page/home";
    }
    @GetMapping("/demo")
    public String demo(Model model) {
        // Demonstrate varargs with multiple messages
        model.addAttribute("messages", List.of("First", "Second", "Third"));
        model.addAttribute("title", "Demo Page");
        return "page/demo";
    }

    @GetMapping("/projects")
    public String projects(Model model) {
        var projects = List.of("MS Windows", "MS Office", "Edge");
        model.addAttribute("projects", projects);
        return "page/projects";
    }
}
