package com.metaxiii.fr.pokedexapi.service.impl;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.mockito.Mockito.verify;

import com.metaxiii.fr.pokedexapi.dao.PokemonDao;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class PokemonServiceImplTest {

  @InjectMocks
  private PokemonServiceImpl pokemonService;

  @Mock
  private PokemonDao pokemonDao;

  @Test
  void itShouldFindAll() {
    assertDoesNotThrow(() -> pokemonService.findAll());
    verify(pokemonDao).findAll();
  }
}
