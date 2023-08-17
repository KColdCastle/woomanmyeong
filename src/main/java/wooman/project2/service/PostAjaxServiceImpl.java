package wooman.project2.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import wooman.project2.domain.Post;
import wooman.project2.repository.PostRepository;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class PostAjaxServiceImpl implements PostAjaxService {
    @Autowired
    private final PostRepository repository;
    @Autowired
    public PostAjaxServiceImpl(PostRepository repository){
        this.repository = repository;
    }
    @Override
    public List<Post> listS() {
        return repository.findAll(Sort.by(Sort.Direction.DESC,"seq"));
    }

    @Override
    public Post insertS(Post post) {
        post = repository.save(post);
        return post;
    }

    @Override
    public Post contentS(long seq) {
        Post post = new Post();
        post = repository.getReferenceById(seq);
        return post;
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
    public Post getBySeqS(long seq) {
        Post post = repository.findById(seq).get();
        return post;
    }

    @Override
    public List<Post> getListByContents(String content) {
        List<Post> list = repository.findByContentContaining(content);
        return list;
    }
}
