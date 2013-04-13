package com.github.lateralthoughts.repositories;

import com.github.lateralthoughts.domain.Survey;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.repository.annotation.RestResource;


@RestResource(path = "survey", rel = "survey")
public interface SurveyRepository extends PagingAndSortingRepository<Survey, Long> {
}
