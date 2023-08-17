package wooman.project2.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import wooman.project2.domain.Post;

import java.sql.Date;
import java.util.List;

public interface PostRepository extends JpaRepository<Post, Long> {

    Post findBySeq(long seq);
    @Query(value = "SELECT CURRENT_DATE", nativeQuery = true)
    Date getCurrentDate();
}
