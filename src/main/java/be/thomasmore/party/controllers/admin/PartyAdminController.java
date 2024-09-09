package be.thomasmore.party.controllers.admin;

import be.thomasmore.party.model.Party;
import be.thomasmore.party.repositories.PartyRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/admin")
public class PartyAdminController {
    private final Logger logger = LoggerFactory.getLogger(PartyAdminController.class);

    @Autowired
    private PartyRepository partyRepository;

    @ModelAttribute("party")
    public Party findParty(@PathVariable(required = false) Integer id) {
        logger.info("findParty " + id);
        Optional<Party> optionalParty = partyRepository.findById(id);
        //noinspection OptionalIsPresent
        if (optionalParty.isPresent())
            return optionalParty.get();
        return null;
    }

    @GetMapping("/partyedit/{id}")
    public String partyEdit(Model model,
                            @PathVariable int id) {
        logger.info("partyEdit " + id);
        return "admin/partyedit";
    }

    @PostMapping("/partyedit/{id}")
    public String partyEditPost(@PathVariable int id,
                                Party party) {
        logger.info("partyEditPost " + id + " -- new name=" + party.getName());
        partyRepository.save(party);
        return "admin/partyedit";
    }
}
