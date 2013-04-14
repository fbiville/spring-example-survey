package com.github.fbiville.repositories;

import com.github.fbiville.domain.Survey;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.repository.annotation.RestResource;


@RestResource(path = "survey", rel = "survey")
public interface SurveyRepository extends PagingAndSortingRepository<Survey, Long> {
}
