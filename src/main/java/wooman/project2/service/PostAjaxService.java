package wooman.project2.service;

import wooman.project2.domain.Post;

import java.util.List;

public interface PostAjaxService {
    List<Post> listS();
    Post insertS(Post post);
    Post contentS(long seq);
    void updateS(Post post);
    void deleteS(long seq);

    Post getBySeqS(long seq);
    List<Post> getListByContents(String content);
}
