package be.thomasmore.party.controllers;

import be.thomasmore.party.model.Animal;
import be.thomasmore.party.repositories.AnimalRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    AnimalRepository animalRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private JdbcUserDetailsManager jdbcUserDetailsManager;

    @GetMapping("/login")
    public String login(Model model, Principal principal) {
        if (principal != null) return "redirect:/partylist";
        return "user/login";
    }

    @GetMapping("/logout")
    public String logout(Model model, Principal principal) {
        if (principal == null) return "redirect:/partylist";
        return "user/logout";
    }

    @GetMapping("/register")
    public String register(Principal principal) {
        if (principal != null) return "redirect:/partylist";
        return "user/register";
    }

    @PostMapping("/register")
    public String registerPost(Principal principal,
                               HttpServletRequest request,
                               @RequestParam String username,
                               @RequestParam String password,
                               @RequestParam String name,
                               @RequestParam String city,
                               @RequestParam String bio) throws ServletException {
        if (principal != null) return "redirect:/partylist";
        if (username == null || username.isBlank()) return "redirect:/partylist";
        if (jdbcUserDetailsManager.userExists(username)) return "redirect:/partylist";

        UserDetails user = org.springframework.security.core.userdetails.User
                .withUsername(username)
                .password(passwordEncoder.encode(password))
                .roles("USER")
                .build();
        jdbcUserDetailsManager.createUser(user);

        Animal newAnimal = new Animal();
        newAnimal.setName(name);
        newAnimal.setUsername(username);
        newAnimal.setCity(city);
        newAnimal.setBio(bio);
        animalRepository.save(newAnimal);

        //autologin:
        request.login(username, password);

        return "redirect:/partylist";
    }

}
