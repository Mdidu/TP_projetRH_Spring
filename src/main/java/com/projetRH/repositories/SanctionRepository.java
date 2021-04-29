package com.projetRH.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.projetRH.domain.Sanction;

public interface SanctionRepository extends JpaRepository<Sanction, Long> {

}
