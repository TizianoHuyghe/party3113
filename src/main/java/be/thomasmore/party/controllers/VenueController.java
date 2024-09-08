package be.thomasmore.party.controllers;

import be.thomasmore.party.model.Venue;
import be.thomasmore.party.repositories.VenueRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
public class VenueController {
    private Logger logger = LoggerFactory.getLogger(VenueController.class);

    @Autowired
    private VenueRepository venueRepository;

    @GetMapping("/venuelist")
    public String venuelist(Model model,
                            @RequestParam(required = false) Integer minCapacity,
                            @RequestParam(required = false) Integer maxCapacity,
                            @RequestParam(required = false) Integer maxDistance,
                            @RequestParam(required = false) Boolean filterFood,
                            @RequestParam(required = false) Boolean filterIndoor,
                            @RequestParam(required = false) Boolean filterOutdoor) {
        logger.info(String.format("venueListWithFilter -- min=%d, max=%d, distance=%d, filterFood=%s, filterIndoor=%s, , filterOutdoor=%s",
                minCapacity, maxCapacity, maxDistance, filterFood, filterIndoor, filterIndoor));

        List<Venue> venues = venueRepository.findByFilter(minCapacity, maxCapacity, maxDistance,
                filterFood, filterIndoor, filterOutdoor);

        model.addAttribute("venues", venues);
        model.addAttribute("filterFood", filterFood);
        model.addAttribute("filterIndoor", filterIndoor);
        model.addAttribute("filterOutdoor", filterOutdoor);

        return "venuelist";
    }

    @GetMapping({"/venuedetails/{id}", "/venuedetails"})
    public String venuedetails(Model model, @PathVariable(required = false) Integer id) {
        if (id == null) return "venuedetails";
        Optional<Venue> venueFromDb = venueRepository.findById(id);
        long count = venueRepository.count();
        if (venueFromDb.isPresent()) {
            model.addAttribute("venue", venueFromDb.get());
            model.addAttribute("prevId", id > 1 ? id - 1 : count);
            model.addAttribute("nextId", id < count ? id + 1 : 1);
        }
        return "venuedetails";
    }
}
