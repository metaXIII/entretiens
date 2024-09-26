package com.metaxiii.fr.pokedexapi.assembler;

import com.metaxiii.fr.pokedexapi.domain.Pokemon;
import com.metaxiii.fr.pokedexapi.model.PokemonModel;
import java.util.List;
import org.springframework.stereotype.Component;

@Component
public class PokemonAssembler {

  public PokemonModel toModel(final List<Pokemon> all) {
    return new PokemonModel(all.stream().map(Pokemon::getName).toList());
  }
}
