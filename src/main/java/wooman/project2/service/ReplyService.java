package wooman.project2.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import wooman.project2.domain.Post;
import wooman.project2.domain.PostListResult;
import wooman.project2.domain.Reply;

import java.util.List;

public interface ReplyService {

    List<Reply> replyS(long postseq);
}
