package com.Se2.CyberWebApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/home")
    public String home() {
        return "pages/home";
    }

    @GetMapping("/admin")
    public String admin() {
        return "pages/admin";
    }

    @GetMapping("/faq")
    public String faq() {
        return "pages/faq";
    }

    @GetMapping("/permissions")
    public String permissions() {
        return "pages/permissions";
    }

    @GetMapping("/profile")
    public String profile() {
        return "pages/profile";
    }

    @GetMapping("/projects")
    public String projects() {
        return "pages/projects";
    }

    @GetMapping("/publications")
    public String publications() {
        return "pages/publications";
    }

    @GetMapping("/ranking")
    public String ranking() {
        return "pages/ranking";
    }

    @GetMapping("/services")
    public String services() {
        return "pages/services";
    }

    @GetMapping("/team")
    public String team() {
        return "pages/team";
    }

    // --- Hỗ trợ lấy file HTML động cho JS (JS Fetch API) ---
    @GetMapping("/components/{name}.html")
    public String getComponent(@org.springframework.web.bind.annotation.PathVariable String name) {
        return "components/" + name;
    }

    @GetMapping("/pages/{name}.html")
    public String getPageHtml(@org.springframework.web.bind.annotation.PathVariable String name) {
        return "pages/" + name;
    }
}
