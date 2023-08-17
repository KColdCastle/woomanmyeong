package wooman.project2.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import wooman.project2.domain.Post;
import wooman.project2.domain.PostListResult;

public interface PostService {
    Page<Post> findAll(Pageable pageable);
    PostListResult getPostListResult(Pageable pageable);
    Post insertS(Post post);
    void deleteS(long postseq);
    Post updateS(Post post);
    Post contentS(long postseq);

}
