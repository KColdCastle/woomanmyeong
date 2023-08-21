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
import wooman.project2.repository.PostRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Transactional
public class PostServiceImpl implements PostService {
    private final PostRepository repository;
    @Override
    public Page<Post> listS(Pageable pageable) {
        return repository.findByOrderBySeqDesc(pageable);
    }

    @Override
    public PostListResult getPostListResult(Pageable pageable) {
        Page<Post> list =listS(pageable);
        int page = pageable.getPageNumber();//현재 페이지
        long totalCount = repository.count();
        int size = pageable.getPageSize();

        return new PostListResult(page, totalCount, size, list);
    }

    @Override
    public List<Post> indexListS(int count) {
        return repository.findAll(PageRequest.of(0, count, Sort.by(Sort.Direction.DESC, "viewnum"))).getContent();
    }

    @Override
    public Post insertS(Post post) {
        return repository.save(post);
    }
    @Override
    public Post contentS(long seq) {
        return repository.findBySeq(seq);
    }
    @Override
    public void updateS(Post post) {

        Optional<Post> newContent= repository.findById(post.getSeq());
        Post post1=newContent.get();
        post1.setEmail(post.getEmail());
        post1.setSubject(post.getSubject());
        post1.setContent(post.getContent());
        post1.setViewnum(post.getViewnum()+1);
        System.out.println(post1.getViewnum());
        repository.save(post1);
    }
    @Override
    public void deleteS(long seq) {
        repository.deleteById(seq);
    }

    @Override
    public List<Post> findTopViewedPostsByBoardname(String boardName, Pageable pageable) {
        return repository.findTopViewedPostsByBoardname(boardName, pageable);
    }
}

