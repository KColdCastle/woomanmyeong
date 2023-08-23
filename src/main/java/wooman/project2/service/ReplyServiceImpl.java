package wooman.project2.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import wooman.project2.domain.Reply;
import wooman.project2.repository.ReplyRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class ReplyServiceImpl implements ReplyService {

    ReplyRepository replyRepository;
    @Override
    public List<Reply> replyS(long postseq){
        return replyRepository.findByReplyPostSeq(postseq);
    }
}
