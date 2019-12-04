package com.qnu.service;

import com.qnu.dto.FilmDTO;

public interface IFilmService {
	FilmDTO findById(long id);
	FilmDTO save(FilmDTO dto);
}
