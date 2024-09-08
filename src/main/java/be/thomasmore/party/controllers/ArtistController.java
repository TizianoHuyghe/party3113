package be.thomasmore.party.controllers;

import be.thomasmore.party.model.Artist;
import be.thomasmore.party.repositories.ArtistRepository;
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
public class ArtistController {
    final private Logger logger = LoggerFactory.getLogger(ArtistController.class);

    @Autowired
    private ArtistRepository artistRepository;

    @GetMapping("/artistlist")
    public String artistList(Model model,
                             @RequestParam(required = false) String keyword) {
        logger.info(String.format("artistList -- keyword=%s", keyword));
        List<Artist> artists = artistRepository.findByKeyword(keyword);
        model.addAttribute("artists", artists);
        return "artistlist";
    }

    @GetMapping({"/artistdetails/{id}", "/artistdetails"})
    public String artistDetails(Model model,
                                @PathVariable(required = false) Integer id) {
        if (id == null) return "artistdetails";

        Optional<Artist> optionalArtist = artistRepository.findById(id);
        long count = artistRepository.count();

        if (optionalArtist.isPresent()) {
            model.addAttribute("artist", optionalArtist.get());
            model.addAttribute("prevId", id > 1 ? id - 1 : count);
            model.addAttribute("nextId", id < count ? id + 1 : 1);
        }
        return "artistdetails";
    }

}
