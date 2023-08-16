package wooman.project2.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import wooman.project2.domain.Member;
import wooman.project2.repository.MemberLoginRepository;

import static wooman.project2.service.MemberLoginConst.*;

@RequiredArgsConstructor
@Service
public class MemberLoginServiceImpl implements MemberLoginService {
    private final MemberLoginRepository memberLoginRepository;
    @Override
    public int check(String email, String pwd) {
        Member member = memberLoginRepository.findByEmail(email);
        if(member == null){
            return NO_ID;
        }else{
            String dbPwd = member.getPwd();
            if(dbPwd != null) dbPwd = dbPwd.trim();

            if(!dbPwd.equals(pwd)){
                return NO_PWD;
            }else{
                return YES_ID_PWD;
            }
        }
    }

    @Override
    public Member getLogin(String email) {
        Member member = memberLoginRepository.findByEmail(email);
        member.setPwd("");
        return member;
    }
}
