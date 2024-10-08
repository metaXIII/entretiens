package com.metaxiii.fr.pokedexapi.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.web.servlet.MockMvc;

@WebMvcTest(PokemonController.class)
class PokemonControllerTest {

  @Autowired
  private MockMvc mockMvc;

  @Test
  void itShouldFindAllPokemons() throws Exception {
    mockMvc.perform(get("/pokemons")).andDo(print()).andExpect(status().isOk());
  }
}
