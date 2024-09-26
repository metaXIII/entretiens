package com.metaxiii.fr.pokedexapi.mapper;

import com.metaxiii.fr.pokedexapi.domain.Pokemon;
import com.metaxiii.fr.pokedexapi.entity.PokemonEntity;
import org.mapstruct.InjectionStrategy;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(
  componentModel = "spring",
  unmappedTargetPolicy = ReportingPolicy.IGNORE,
  injectionStrategy = InjectionStrategy.CONSTRUCTOR
)
public interface PokemonMapper {
  Pokemon toDomain(PokemonEntity entity);
}
