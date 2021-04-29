package com.projetRH.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.projetRH.domain.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
