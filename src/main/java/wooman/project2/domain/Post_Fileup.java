package wooman.project2.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
@SequenceGenerator(name="POST_FILEUP_SEQ_GENERATOR", sequenceName = "POSTSEQ", initialValue = 1, allocationSize = 1)
@SequenceGenerator(name="POST_FILEUP_SEQ_GENERATOR", sequenceName = "FILEUPSEQ", initialValue = 1, allocationSize = 1)

public class Post_Fileup {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "POST_FILEUP_SEQ_GENERATOR")
    private long fileupseq;

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "POST_FILEUP_SEQ_GENERATOR")
    private long postseq;
}
