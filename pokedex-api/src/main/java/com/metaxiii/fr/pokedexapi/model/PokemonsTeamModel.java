package com.metaxiii.fr.pokedexapi.model;

import java.util.List;

public record PokemonsTeamModel(String trainer, List<Pokemon> pokemons) {
  //in case of two types : concat both types with a /
  public record Pokemon(String name, String types, int level) {}
}
