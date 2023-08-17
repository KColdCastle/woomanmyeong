package wooman.project2.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.sql.Date;

//@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
@SequenceGenerator(name="FILEUP_SEQ_GENERATOR", sequenceName = "FILESEQ", initialValue = 1, allocationSize = 1)

public class FileUp {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "FILEUP_SEQ_GENERATOR")
    private long fileseq;
    private String fileUppath;
    private String originalname;
    private String savename;
    private String email;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp
    private Date frdate;

    @Builder//도메인 쓸때 빌더를 더 많이 씀, NoArgsConstructor과 겹침.
    public FileUp(long fileseq, String fileUppath, String originalname, String savename,String email, Date frdate){
        this.fileseq=fileseq;
        this.fileUppath=fileUppath;
        this.originalname=originalname;
        this.savename=savename;
        this.email=email;
        this.frdate=frdate;
    }
}
