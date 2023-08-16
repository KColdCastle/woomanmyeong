package wooman.project2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import wooman.project2.domain.Member;

public interface MemberLoginRepository extends JpaRepository<Member,Long> {
    Member findByEmail(String email);
}
