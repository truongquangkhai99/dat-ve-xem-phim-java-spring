package com.qnu.constant;

import org.springframework.data.jpa.repository.JpaRepository;

import com.qnu.entity.RoleEntity;

public interface RoleRepository extends JpaRepository<RoleEntity, Long>{
	RoleEntity findOneById(Long id);
}
