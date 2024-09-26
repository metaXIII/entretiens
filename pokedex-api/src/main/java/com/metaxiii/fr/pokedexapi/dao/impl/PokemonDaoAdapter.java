package com.metaxiii.fr.pokedexapi.dao.impl;

import com.metaxiii.fr.pokedexapi.dao.PokemonDao;
import com.metaxiii.fr.pokedexapi.domain.Pokemon;
import com.metaxiii.fr.pokedexapi.mapper.PokemonMapper;
import com.metaxiii.fr.pokedexapi.repository.PokemonRepository;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
public class PokemonDaoAdapter implements PokemonDao {

  private final PokemonMapper mapper;
  private final PokemonRepository repository;

  @Override
  public List<Pokemon> findAll() {
    return repository.findAll().stream().map(mapper::toDomain).toList();
  }
}
