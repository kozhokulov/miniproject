package com.example.mininews.repos;

import com.example.mininews.domain.News;
import org.springframework.data.repository.CrudRepository;

public interface NewsRepo extends CrudRepository<News, Integer> {
}
