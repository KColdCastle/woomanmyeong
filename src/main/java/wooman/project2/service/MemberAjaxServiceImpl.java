package wooman.project2.service;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooman.project2.domain.Member;
import wooman.project2.domain.Post;
import wooman.project2.repository.MemberAjaxRepository;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Service
public class MemberAjaxServiceImpl implements MemberAjaxService {
    @Autowired
    MemberAjaxRepository repository;

    @Override
    public List<Member> getListByNicknames(String nickname) {
        System.out.println("입력닉네임: "+nickname);
        List<Member> list= repository.findNicknameByNickname(nickname);
        System.out.println("백 데이트: "+list);
        return repository.findNicknameByNickname(nickname);
    }


    @Override
    public void updateNicknameByEmail(Member member) {
        Optional<Member> newContent= repository.findById(member.getEmail());
        Member member1=newContent.get();
        member1.setEmail(member.getEmail());
        member1.setPwd(member.getPwd());
        member1.setNickname(member.getNickname());
        repository.save(member1);
    }
    @Override
    public void updatePwdByEmail(Member member) {
        Optional<Member> newContent= repository.findById(member.getEmail());
        Member member1=newContent.get();
        member1.setEmail(member.getEmail());
        member1.setPwd(member.getPwd());
        member1.setNickname(member.getNickname());
        repository.save(member1);
    }
}
