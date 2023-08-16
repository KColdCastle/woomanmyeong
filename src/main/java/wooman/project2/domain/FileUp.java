package wooman.project2.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.sql.Date;

@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
@SequenceGenerator(name="FILEUP_SEQ_GENERATOR", sequenceName = "FILESEQ", initialValue = 1, allocationSize = 1)

public class Fileup {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "FILEUP_SEQ_GENERATOR")
    private long fileseq;
    private String fileuppath;
    private String originalname;
    private String savename;
    private String email;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp
    private Date frdate;
}
