package wooman.project2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import wooman.project2.domain.FileUp;
import wooman.project2.domain.Post;

import java.util.List;

public interface WriteRepository {
    Post postInsert(Post post);
}
