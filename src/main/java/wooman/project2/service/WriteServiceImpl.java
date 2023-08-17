package wooman.project2.service;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import wooman.project2.domain.Post;
import wooman.project2.repository.WriteRepository;


@Service
@RequiredArgsConstructor
public class WriteServiceImpl implements WriteService {

    private final WriteRepository repository;

    @Override
    public Post insertS(Post post) {
        post = repository.save(post);
        return repository.save(post);
    }


}
