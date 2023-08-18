package wooman.project2.service;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import wooman.project2.domain.Post;
import wooman.project2.repository.PostRepository;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Transactional
public class PostServiceImpl implements PostService {
    private final PostRepository repository;
    @Override
    public List<Post> listS() {
        return repository.findAll();
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
}
