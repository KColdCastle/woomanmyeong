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

    @Query("SELECT p FROM Reply p WHERE p.postseq = ?1 ORDER BY p.seq DESC")
    List<Reply> findByReplyPostSeq(long postseq);

    @Query(value = "SELECT CURRENT_DATE", nativeQuery = true)
    Date getCurrentDate();
    //자동으로 현재 날짜 넣어주는 메소드
}
