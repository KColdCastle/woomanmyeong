package wooman.project2.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import wooman.project2.domain.Post;
import wooman.project2.domain.Reply;

import java.sql.Date;
import java.util.List;

public interface ReplyRepository extends JpaRepository<Reply, Long> {

    List<Reply> findByPostseqOrderBySeqDesc(long postseq);
}
