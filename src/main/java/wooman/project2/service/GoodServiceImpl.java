package wooman.project2.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import wooman.project2.domain.Good;
import wooman.project2.repository.GoodRepository;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class GoodServiceImpl implements GoodService {
    private final GoodRepository repository;
    @Override
    public Good insertG(Good good) {
        good = repository.save(good);
        return good;
    }
}
