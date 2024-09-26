package com.metaxiii.fr.pokedexapi.service.impl;

import com.metaxiii.fr.pokedexapi.dao.PokemonDao;
import com.metaxiii.fr.pokedexapi.domain.Pokemon;
import com.metaxiii.fr.pokedexapi.service.PokemonService;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class PokemonServiceImpl implements PokemonService {

  private final PokemonDao dao;

  @Override
  public List<Pokemon> findAll() {
    return dao.findAll();
  }
}
