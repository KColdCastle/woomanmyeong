package wooman.project2.service;

import wooman.project2.domain.Member;

public interface MemberLoginService {
    int check(String email,String pwd);

    Member getLogin(String email);

    void insertM(Member member);

}
