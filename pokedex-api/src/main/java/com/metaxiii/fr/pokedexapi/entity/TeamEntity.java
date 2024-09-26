package com.metaxiii.fr.pokedexapi.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "team")
public class TeamEntity {

  @Id
  private Integer id;

  @ManyToOne
  @JoinColumn(name = "trainer_id", referencedColumnName = "id")
  private TrainerEntity trainer;

  @ManyToOne
  @JoinColumn(name = "pokemon_id", referencedColumnName = "id")
  private PokemonEntity pokemon;

  @Column
  private Integer level;
}
