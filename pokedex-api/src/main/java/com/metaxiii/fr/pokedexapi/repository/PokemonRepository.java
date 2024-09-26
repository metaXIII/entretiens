package com.metaxiii.fr.pokedexapi.repository;

import com.metaxiii.fr.pokedexapi.entity.PokemonEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PokemonRepository extends JpaRepository<PokemonEntity, Integer> {}
