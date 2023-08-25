package wooman.project2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import wooman.project2.domain.Member;

import java.util.List;

public interface MemberAjaxRepository extends JpaRepository<Member,String> {
    List<Member> findNicknameByNickname(String nickname);

}
