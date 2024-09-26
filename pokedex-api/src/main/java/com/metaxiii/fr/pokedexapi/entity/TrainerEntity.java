package com.metaxiii.fr.pokedexapi.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "trainer")
public class TrainerEntity {

  @Id
  @GeneratedValue
  private Integer id;

  @Column
  private String name;
}
