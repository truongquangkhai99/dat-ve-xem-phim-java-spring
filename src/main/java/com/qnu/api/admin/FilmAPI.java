package com.qnu.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.qnu.dto.FilmDTO;
import com.qnu.service.IFilmService;

@RestController(value = "filmAPIOfAdmin")
public class FilmAPI {
	@Autowired
	private IFilmService filmService;
	
	@PostMapping("/api-film")
	public FilmDTO createFilm(@RequestBody FilmDTO filmDTO) {
		return filmService.save(filmDTO);
	}
	
	@PutMapping("/api-film")
	public FilmDTO updateFilm(@RequestBody FilmDTO updateFilm) {
		return filmService.save(updateFilm);
	}
	
	
}
