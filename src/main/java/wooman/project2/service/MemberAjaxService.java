package wooman.project2.service;

import wooman.project2.domain.Member;

import java.util.List;

public interface MemberAjaxService {
    List<Member> getListByNicknames(String nickname);

    void updateNicknameByEmail(Member member);

    void updatePwdByEmail(Member member);
}
