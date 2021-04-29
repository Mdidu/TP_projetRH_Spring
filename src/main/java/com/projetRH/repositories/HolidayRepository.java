package com.projetRH.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.projetRH.domain.Holiday;

public interface HolidayRepository extends JpaRepository<Holiday, Long> {

}
