package com.metaxiii.fr.pokedexapi.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "type")
public class TypeEntity {

  @Id
  @GeneratedValue
  private int id;

  private String libelle;
}
