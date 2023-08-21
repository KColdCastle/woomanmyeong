package wooman.project2.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import wooman.project2.domain.Post;
import wooman.project2.domain.PostListResult;

import java.util.List;

public interface PostService {
    Page<Post> listS(Pageable pageable);
    PostListResult getPostListResult(Pageable pageable);
    List<Post> indexListS(int count);

    Post insertS(Post post);
    Post contentS(long seq);
    void updateS(Post post);
    void deleteS(long seq);


    List<Post> findTopViewedPostsByBoardname(String boardName, Pageable pageable);
}
