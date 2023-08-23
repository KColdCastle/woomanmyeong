package wooman.project2.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import wooman.project2.domain.Post;
import wooman.project2.domain.PostListResult;
import wooman.project2.domain.Reply;

import java.util.List;

public interface ReplyService {
    List<Reply> findReplyPostseq (long postseq);

    Reply insertS(Reply reply);


}
