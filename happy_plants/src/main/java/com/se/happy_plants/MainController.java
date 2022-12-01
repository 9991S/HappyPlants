package com.se.happy_plants;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

//Controller kümmern sich um Get Requests

@Controller
public class MainController {
    /*GetMapping bedeutet das wenn eine Anfrage an den Server geschickt wird (hier localhost/main)
        dann wird diese Methode/html file als Antwort geschickt. */
    @GetMapping("/main")
    public String main() {
        // greeting ist der name der html datei die zurückgeschickt werden soll
        // die datei findet man unter resources/templates
        return "greeting";
    }
}
