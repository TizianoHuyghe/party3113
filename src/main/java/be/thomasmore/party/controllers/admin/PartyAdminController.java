package be.thomasmore.party.controllers.admin;

import be.thomasmore.party.model.Party;
import be.thomasmore.party.repositories.ArtistRepository;
import be.thomasmore.party.repositories.PartyRepository;
import be.thomasmore.party.repositories.VenueRepository;
import jakarta.validation.Valid;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/admin")
public class PartyAdminController {
    private final Logger logger = LoggerFactory.getLogger(PartyAdminController.class);

    @Autowired
    private PartyRepository partyRepository;
    @Autowired
    private VenueRepository venueRepository;
    @Autowired
    private ArtistRepository artistRepository;

    @ModelAttribute("party")
    public Party findParty(@PathVariable(required = false) Integer id) {
        logger.info("findParty " + id);
        if (id == null) return new Party();

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
        model.addAttribute("venues", venueRepository.findAll());
        model.addAttribute("artists", artistRepository.findAll());
        return "admin/partyedit";
    }

    @PostMapping("/partyedit/{id}")
    public String partyEditPost(Model model,
                                @PathVariable int id,
                                @Valid Party party,
                                BindingResult bindingResult) {
        logger.info("partyEditPost " + id + " -- new name=" + party.getName());
        if (bindingResult.hasErrors()) {
            model.addAttribute("venues", venueRepository.findAll());
            model.addAttribute("artists", artistRepository.findAll());
            return "admin/partyedit";
        }
        partyRepository.save(party);
        return "redirect:/partydetails/" + id;
    }

    @GetMapping("/partynew")
    public String partyNew(Model model) {
        logger.info("partyNew ");
        model.addAttribute("venues", venueRepository.findAll());
        model.addAttribute("artists", artistRepository.findAll());
        return "admin/partynew";
    }

    @PostMapping("/partynew")
    public String partyNewPost(Model model,
                               @Valid Party party,
                               BindingResult bindingResult) {
        logger.info("partyNewPost -- new name=" + party.getName() + ", date=" + party.getDate());
        if (bindingResult.hasErrors()) {
            model.addAttribute("venues", venueRepository.findAll());
            model.addAttribute("artists", artistRepository.findAll());
            return "admin/partynew";
        }
        Party newParty = partyRepository.save(party);
        return "redirect:/partydetails/" + newParty.getId();
    }

}
