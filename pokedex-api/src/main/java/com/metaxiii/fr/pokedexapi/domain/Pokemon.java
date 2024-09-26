package com.metaxiii.fr.pokedexapi.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class Pokemon {

  private Integer id;
  private String name;
}
