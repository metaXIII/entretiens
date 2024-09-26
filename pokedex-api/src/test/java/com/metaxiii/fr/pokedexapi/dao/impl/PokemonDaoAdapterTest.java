package com.metaxiii.fr.pokedexapi.dao.impl;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;

@DataJpaTest
@ComponentScan(value = "com.metaxiii.fr.pokedexapi")
class PokemonDaoAdapterTest {

  @Autowired
  private PokemonDaoAdapter pokemonDao;

  @Test
  void itShouldFindAll() {
    final var result = pokemonDao.findAll();
    assertEquals(151, result.size());
  }
}
