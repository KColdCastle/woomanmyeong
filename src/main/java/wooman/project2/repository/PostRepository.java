package wooman.project2.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import wooman.project2.domain.Post;
import wooman.project2.domain.Reply;

import java.sql.Date;
import java.util.List;

public interface PostRepository extends JpaRepository<Post, Long> {

    Post findBySeq(long seq);
    @Query(value = "SELECT CURRENT_DATE", nativeQuery = true)
    Date getCurrentDate();
    //자동으로 현재 날짜 넣어주는 메소드

    List<Post> findByContentContaining(String content);
    //검색기능 넣으면서 사용하지 않음
    Page<Post> findByOrderBySeqDesc(Pageable pageable);//for 페이징
    //검색기능 넣으면서 사용하지 않음

//    @Query("SELECT p FROM Post p WHERE p.boardname = ?1 ORDER BY p.seq DESC")
//    Page<Post> findByBoardNameOrderBySeqDesc(String boardName, Pageable pageable);
//    //게시판 종류별로 최신글로 표시하는 메소드

    @Query("SELECT COUNT(p) FROM Post p WHERE p.boardname = ?1")
    long countByBoardName(String boardName);
    //게시판 종류에 따른 게시글 수를 가져오는 메소드

    @Query("SELECT p FROM Post p WHERE p.boardname = ?1 ORDER BY p.viewnum DESC")
    List<Post> findTopViewedPostsByBoardname(String boardName, Pageable pageable);
    //게시판 종류별로 조회수 많은 순으로 내림차순정렬하여 표시하는 메소드

    @Query("SELECT p FROM Post p WHERE p.nickname LIKE %?1% OR p.subject LIKE %?2%")
    Page<Post> findByNicknameOrSubject(String nickname, String subject, Pageable pageable);
    //전체 게시글 닉네임, 제목으로 조회하는 메소드
    @Query("SELECT COUNT(p) FROM Post p WHERE p.nickname LIKE %?1% OR p.subject LIKE %?2%")
    long countByNickNameOrSubject(String nickname, String subject);
    //전체 게시글 닉네임, 제목으로 조회했을 때 게시글 수 가져오는 메소드

    @Query("SELECT p FROM Post p WHERE p.boardname=?1 AND (p.nickname LIKE %?2% OR p.subject LIKE %?3%) ORDER BY p.viewnum DESC")
    Page<Post> findByBoardNameAndNicknameOrSubject(String Boardname, String nickname, String subject, Pageable pageable);
    //전체 게시글 닉네임, 제목으로 조회하는 메소드
    @Query("SELECT COUNT(p) FROM Post p WHERE p.boardname=?1 AND (p.nickname LIKE %?2% OR p.subject LIKE %?3%)")
    long countByNickNameOrSubject(String Boardname, String nickname, String subject);
    //전체 게시글 닉네임, 제목으로 조회했을 때 게시글 수 가져오는 메소드

    @Query("SELECT p FROM Post p WHERE p.email=?1 AND p.subject LIKE %?2% ORDER BY p.seq DESC")
    Page<Post> findByEmailAndSubject(String email, String subject, Pageable pageable);
    @Query("SELECT COUNT(p) FROM Post p WHERE p.email=?1 AND p.subject LIKE %?2%")
    long countByEmailAndSubject(String email, String subject);
    //전체 게시글 닉네임, 제목으로 조회했을 때 게시글 수 가져오는 메소드
}
