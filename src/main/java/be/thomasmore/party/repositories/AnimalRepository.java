package be.thomasmore.party.repositories;

import be.thomasmore.party.model.Animal;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface AnimalRepository extends CrudRepository<Animal, Integer> {
    Optional<Animal> findByUsername(String name);
}
