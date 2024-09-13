package be.thomasmore.party.controllers;

import be.thomasmore.party.model.Animal;
import be.thomasmore.party.model.Party;
import be.thomasmore.party.repositories.AnimalRepository;
import be.thomasmore.party.repositories.PartyRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;
import java.util.Collection;
import java.util.Optional;

@Controller
public class PartyController {
    private final Logger logger = LoggerFactory.getLogger(PartyController.class);

    @Autowired
    private PartyRepository partyRepository;

    @Autowired
    private AnimalRepository animalRepository;

    @GetMapping("/partylist")
    public String partyList(Model model) {
        Iterable<Party> parties = partyRepository.findAll();
        model.addAttribute("parties", parties);
        return "partylist";
    }

    @GetMapping({"partydetails/{id}", "/partydetails"})
    public String partyDetails(Model model,
                               @PathVariable(required = false) Integer id) {
        if (id == null) return "partydetails";

        Optional<Party> optionalParty = partyRepository.findById(id);
        long count = partyRepository.count();

        if (optionalParty.isPresent()) {
            model.addAttribute("party", optionalParty.get());
            model.addAttribute("prevId", id > 1 ? id - 1 : count);
            model.addAttribute("nextId", id < count ? id + 1 : 1);
        }
        return "partydetails";
    }

    @PostMapping({"/partygoing", "/partygoing/{id}"})
    public String partyGoingToggle(Model model,
                                   Principal principal,
                                   @PathVariable(required = false) Integer id) {
        if (id == null) return "redirect:/partylist";
        if (principal == null) return "redirect:/partydetails/" + id;

        Optional<Animal> optionalAnimal = animalRepository.findByUsername(principal.getName());
        Optional<Party> optionalParty = partyRepository.findById(id);

        if (optionalParty.isPresent() && optionalAnimal.isPresent()) {
            Animal animal = optionalAnimal.get();
            Party party = optionalParty.get();
            Party foundPartyForAnimal = findPartyById(animal.getParties(), party.getId());
            if (foundPartyForAnimal == null)
                animal.getParties().add(party);
            animalRepository.save(animal);
        }
        return "redirect:/partydetails/" + id;
    }

    private Party findPartyById(Collection<Party> parties, int partyId) {
        for (Party p : parties) {
            if (p.getId() == partyId) return p;
        }
        return null;
    }
}
