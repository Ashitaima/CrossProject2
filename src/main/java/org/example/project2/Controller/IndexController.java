package org.example.project2.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {

    @GetMapping("/")
    public String index(Model model) {
        var langs = List.of("Java", "C++");
        var descriptions = Map.of(
            "Java", "A versatile, object-oriented language perfect for enterprise applications",
            "C++", "A powerful systems programming language with high performance"
        );
        model.addAttribute("langs", langs);
        model.addAttribute("descriptions", descriptions);
        model.addAttribute("pageTitle", "Welcome to JTE Demo");
        model.addAttribute("body", null);
        return "index";
    }
}
