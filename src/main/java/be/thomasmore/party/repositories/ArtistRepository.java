package be.thomasmore.party.repositories;

import be.thomasmore.party.model.Artist;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ArtistRepository extends CrudRepository<Artist, Integer> {
    @Query("select a from Artist a WHERE " +
            ":keyword IS NULL OR " +
            "(a.artistName ILIKE CONCAT('%', :keyword, '%')) OR " +
            "(a.bio ILIKE CONCAT('%', :keyword, '%')) OR " +
            "(a.genre ILIKE CONCAT('%', :keyword, '%')) OR " +
            "(a.portfolio ILIKE CONCAT('%', :keyword, '%'))")
    List<Artist> findByKeyword(@Param("keyword")String keyword);

}
