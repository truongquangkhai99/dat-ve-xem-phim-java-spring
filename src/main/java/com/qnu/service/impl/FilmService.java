package com.qnu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

import com.qnu.converter.FilmConverter;
import com.qnu.dto.FilmDTO;
import com.qnu.entity.FilmEntity;
import com.qnu.repository.FilmRepository;
import com.qnu.service.IFilmService;

public class FilmService implements IFilmService {

	@Autowired
	private FilmRepository filmRepository;

	@Autowired
	private FilmConverter filmConverter;
	
	
	@Override
	public FilmDTO findById(long id) {
		FilmEntity entity = filmRepository.findOne(id);
		return filmConverter.toDto(entity);
	}

	@Override
	@Transactional
	public FilmDTO save(FilmDTO dto) {
		FilmEntity filmEntity = new FilmEntity();
		if (dto.getId() != null) {
			FilmEntity oldNew = filmRepository.findOne(dto.getId());
			filmEntity = filmConverter.toEntity(oldNew, dto);
		} else {
			filmEntity = filmConverter.toEntity(dto);
		}
		return filmConverter.toDto(filmRepository.save(filmEntity));
	}

}
