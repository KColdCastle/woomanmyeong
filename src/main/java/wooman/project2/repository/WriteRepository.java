package wooman.project2.repository;

import wooman.project2.domain.Post;


public interface WriteRepository {
    Post postInsert(Post post);
}
