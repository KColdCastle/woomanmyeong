package wooman.project2.service;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import wooman.project2.domain.Post;
import wooman.project2.repository.WriteRepository;


@Service
@RequiredArgsConstructor
public class WriteServiceImpl implements WriteService {

    WriteRepository repository;

    @Value("${file.dir}")//어노테이션으로 해야함
    private String fileDir;//어플리케이션 프로퍼티에 설정한 경로가 설정이 됨.
    @Override
    public Post insertS(Post post) {
        return repository.postInsert(post);
    }


}
