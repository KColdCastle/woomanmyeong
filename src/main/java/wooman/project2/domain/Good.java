package wooman.project2.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
@SequenceGenerator(name="GOOD_SEQ_GENERATOR", sequenceName = "GOODSEQ", initialValue = 1, allocationSize = 1)
public class Good {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "GOOD_SEQ_GENERATOR")
    private long goodSeq;
    private long postSeq;
    private String email;
}