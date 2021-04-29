package com.projetRH.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.projetRH.domain.Sanction;
import com.projetRH.repositories.SanctionRepository;

@Service
@Transactional
public class SanctionServiceImpl implements SanctionService {

	@Autowired
	SanctionRepository sanctionRepository;
	
	@Override
	public void add(Sanction sanction) {
		sanctionRepository.save(sanction);
	}

	@Override
	public void delete(Sanction sanction) {
		sanctionRepository.delete(sanction);
	}

	@Override
	public void update(Sanction sanction) {
		sanctionRepository.save(sanction);
	}

	@Override
	public List<Sanction> findAll() {
		return sanctionRepository.findAll();
	}

	@Override
	public Sanction findById(long id) {
		return sanctionRepository.getOne(id);
	}
}
