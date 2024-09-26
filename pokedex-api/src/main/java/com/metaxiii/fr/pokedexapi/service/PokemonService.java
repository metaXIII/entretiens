package com.metaxiii.fr.pokedexapi.service;

import com.metaxiii.fr.pokedexapi.domain.Pokemon;
import java.util.List;

public interface PokemonService {
  List<Pokemon> findAll();
}
