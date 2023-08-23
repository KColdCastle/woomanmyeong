package wooman.project2.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import wooman.project2.domain.Post;
import wooman.project2.domain.Reply;
import wooman.project2.repository.PostRepository;
import wooman.project2.repository.ReplyRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class ReplyServiceImpl implements ReplyService {
    private final ReplyRepository repository;
    @Override
    public List<Reply> findReplyPostseq(long postseq) {
        return repository.findByPostseqOrderBySeqDesc(postseq);
    }

    @Override
    public Reply insertS(Reply reply) {
        return repository.save(reply);
    }
}
