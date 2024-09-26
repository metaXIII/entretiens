package com.metaxiii.fr.pokedexapi.dao;

import com.metaxiii.fr.pokedexapi.domain.Pokemon;
import java.util.List;

public interface PokemonDao {
  List<Pokemon> findAll();
}
