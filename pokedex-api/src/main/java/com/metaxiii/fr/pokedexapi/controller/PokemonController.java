package com.metaxiii.fr.pokedexapi.controller;

import com.metaxiii.fr.pokedexapi.assembler.PokemonAssembler;
import com.metaxiii.fr.pokedexapi.dto.GymLeaderDto;
import com.metaxiii.fr.pokedexapi.model.PokemonModel;
import com.metaxiii.fr.pokedexapi.model.PokemonsTeamModel;
import com.metaxiii.fr.pokedexapi.service.PokemonService;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
@RequestMapping("/pokemons")
public class PokemonController {

  private final PokemonAssembler assembler;
  private final PokemonService service;

  @GetMapping(value = "/", produces = MediaType.APPLICATION_JSON_VALUE)
  public ResponseEntity<PokemonModel> findAllPokemons() {
    return ResponseEntity.status(HttpStatus.OK).body(assembler.toModel(service.findAll()));
  }

  @GetMapping(value = "/team")
  public ResponseEntity<PokemonsTeamModel> findAllPokemonsByTeamLeader() {
    //you should find the teams of a trainer passed as object (dto : GymLeaderDto.class)
    //return type should be PokemonsTeamModel
    return ResponseEntity.status(HttpStatus.CREATED).body(null);
  }
}
