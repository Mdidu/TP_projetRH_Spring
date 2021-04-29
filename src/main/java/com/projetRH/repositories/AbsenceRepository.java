package com.projetRH.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.projetRH.domain.Absence;

public interface AbsenceRepository extends JpaRepository<Absence, Long> {

}
