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
    private long fileSeq;
    private String fileUpPath;
    private String originalName;
    private String saveName;
    private String email;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp
    private Date fRDate;

    @Builder//도메인 쓸때 빌더를 더 많이 씀, NoArgsConstructor과 겹침.
    public FileUp(long fileSeq, String fileUpPath, String originalName, String saveName,String email, Date fRDate){
        this.fileSeq=fileSeq;
        this.fileUpPath=fileUpPath;
        this.originalName=originalName;
        this.saveName=saveName;
        this.email=email;
        this.fRDate=fRDate;
    }
}
