package com.metaxiii.fr.pokedexapi.repository;

import com.metaxiii.fr.pokedexapi.entity.IsTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IsTypeRepository extends JpaRepository<IsTypeEntity, Integer> {}
