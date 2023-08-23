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
    @Query(value = "SELECT CURRENT_DATE", nativeQuery = true)
    Date getCurrentDate();
    //자동으로 현재 날짜 넣어주는 메소드

    @Query("SELECT COUNT(p) FROM Post p WHERE p.boardname=?1 AND (p.nickname LIKE %?2% OR p.subject LIKE %?3%)")
    long countByNickNameOrSubject(String Boardname, String nickname, String subject);

}
