package wooman.project2.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import wooman.project2.domain.Post;
import wooman.project2.domain.PostListResult;

import java.util.List;

public interface PostService {
    Page<Post> listS(String nickName, String subject, Pageable pageable);
    PostListResult getPostListResult(String nickName, String subject, Pageable pageable);

    Page<Post> listBoardNameS(String boardName,String nickName, String subject, Pageable pageable);

    PostListResult getPostListResultWithBoardName(String boardName, String nickName, String subject, Pageable pageable);

    //Post insertS(Post post);
    //boradin 으로 따로 빼서 작성함.
    Post contentS(long seq);
    void viewNumUp(long seq);
    void updateS(Post post);
    void deleteS(long seq);

    List<Post> findTopViewedPostsByBoardname(String boardName, Pageable pageable);
}
