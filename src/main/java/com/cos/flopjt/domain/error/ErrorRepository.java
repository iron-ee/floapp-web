package com.cos.flopjt.domain.error;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ErrorRepository extends JpaRepository<ErrorLog, Long>{

	
}
