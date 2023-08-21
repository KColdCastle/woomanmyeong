package wooman.project2.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.domain.Page;

@NoArgsConstructor
@Data
public class PostListResult {
    private Page<Post> list;

    private int page;
    private int size;//한 페이지 글 수
    private long totalCount;//총 글 수
    private long totalPageCount;//총 패이지 글 수

    public PostListResult(int page, long totalCount, int size, Page<Post> list){
        this.page=page;
        this.totalCount=totalCount;
        this.size=size;
        this.list=list;
        this.totalPageCount=calTotalPageCount();
    }
    private long calTotalPageCount(){
        long tpc=totalCount/size;
        if(totalCount%size != 0) tpc++;
        return tpc;
    }
}
