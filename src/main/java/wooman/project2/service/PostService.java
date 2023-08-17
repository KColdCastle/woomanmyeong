package wooman.project2.service;

import wooman.project2.domain.Post;

import java.util.List;

public interface PostService {
    List<Post> listS();
    Post insertS(Post post);
    Post contentS(long seq);
    void updateS(Post post);
    void deleteS(long seq);
}
