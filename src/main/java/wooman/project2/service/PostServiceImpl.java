package wooman.project2.service;

import jakarta.transaction.Transactional;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import wooman.project2.domain.Post;
import wooman.project2.domain.PostListResult;
import wooman.project2.repository.PostRepository;

import java.sql.Date;

@Transactional
@RequiredArgsConstructor
@Service

public class PostServiceImpl implements PostService {
    @Autowired
    private final PostRepository repository;
    @Override
    public Page<Post> findAll(Pageable pageable) {
        return repository.findByOrderByPostseqDesc(pageable);
    }

    @Override
    public PostListResult getPostListResult(Pageable pageable) {
        Page<Post> list = findAll(pageable);
        int page = pageable.getPageNumber();
        long totalCount = repository.count();
        int size = pageable.getPageSize();
        return new PostListResult(page, totalCount, size, list);
    }

    @Override
    public Post insertS(Post post) {
        post = repository.save(post);
        return post;
    }

    @Override
    public void deleteS(long postseq) {
        repository.deleteById(postseq);

    }

    @Override
    public Post updateS(Post post) {
        Date dt = repository.getReferenceById(post.getPostseq()).getCrdate();
        post.setCrdate(dt);
        post = repository.save(post);
        return post;
    }

    @Override
    public Post contentS(long postseq) {
        Post post = new Post();
        post = repository.getReferenceById(postseq);
        return post;
    }
}
