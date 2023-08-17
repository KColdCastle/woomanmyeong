package wooman.project2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import wooman.project2.domain.Post;


public interface WriteRepository extends JpaRepository<Post,Long> {

}
