package com.metaxiii.fr.pokedexapi.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "is_type")
public class IsTypeEntity {

  @Id
  @GeneratedValue
  public Integer id;

  @ManyToOne
  @JoinColumn(name = "pokemon_id", referencedColumnName = "id")
  private PokemonEntity pokemon;

  @ManyToOne
  @JoinColumn(name = "type_id", referencedColumnName = "id")
  private TypeEntity type;
}
