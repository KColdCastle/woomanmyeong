package wooman.project2.service;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import wooman.project2.domain.Post;
import wooman.project2.domain.PostListResult;
import wooman.project2.domain.Reply;
import wooman.project2.repository.PostRepository;
import wooman.project2.repository.ReplyRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Transactional
public class PostServiceImpl implements PostService {
    private final PostRepository repository;
    @Override
    public Page<Post> listS(String nickName, String subject, Pageable pageable) {
        return repository.findByNicknameOrSubject(nickName, subject, pageable);
    }//전체 게시글 불러오는 메소드+검색기능 추가

    @Override
    public PostListResult getPostListResult(String nickName, String subject, Pageable pageable) {
        Page<Post> list =listS(nickName, subject, pageable);
        int page = pageable.getPageNumber();//현재 페이지
        long totalCount = repository.countByNickNameOrSubject(nickName, subject);
        int size = pageable.getPageSize();

        return new PostListResult(page, totalCount, size, list);
    }//전체글 페이징을 위한 메소드

    @Override
    public Page<Post> listBoardNameS(String boardName,String nickName, String subject, Pageable pageable) {
        return repository.findByBoardNameAndNicknameOrSubject(boardName, nickName, subject, pageable);
    }
    @Override
    public PostListResult getPostListResultWithBoardName(String boardName,String nickName, String subject, Pageable pageable) {
        Page<Post> list =listBoardNameS(boardName,nickName,subject, pageable);
        int page = pageable.getPageNumber();//현재 페이지
        long totalCount = repository.countByNickNameOrSubject(boardName,nickName,subject);
        int size = pageable.getPageSize();

        return new PostListResult(page, totalCount, size, list);
    }//특정 게시판 페이징을 위한 메소드


//    @Override
//    public Post insertS(Post post) {
//        return repository.save(post);
//    }
    @Override
    public Post contentS(long seq) {
        return repository.findBySeq(seq);
    }//컨텐츠 내용 표시해주는 메소드

    @Override
    public void viewNumUp(long seq) {
        Optional<Post> newContent= repository.findById(seq);
        Post post1=newContent.get();
        post1.setViewnum(post1.getViewnum()+1);
        repository.save(post1);
    }//조회수 올리는 메소드

    @Override
    public void updateS(Post post) {

        Optional<Post> newContent= repository.findById(post.getSeq());
        Post post1=newContent.get();
        post1.setEmail(post.getEmail());
        post1.setSubject(post.getSubject());
        post1.setContent(post.getContent());
        post1.setViewnum(post.getViewnum());
        System.out.println(post1.getViewnum());
        repository.save(post1);
    }//게시글 수정하는 메소드
    @Override
    public void deleteS(long seq) {
        repository.deleteById(seq);
    }

    @Override
    public List<Post> findTopViewedPostsByBoardname(String boardName, Pageable pageable) {
        return repository.findTopViewedPostsByBoardname(boardName, pageable);
    }//메인페이지 top 5 게시글 불러오는 메소드
}

