package wooman.project2.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
@SequenceGenerator(name="GOOD_SEQ_GENERATOR", sequenceName = "GOOD_SEQ", initialValue = 1, allocationSize = 1)
public class Good {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "GOOD_SEQ_GENERATOR")
    private long goodseq;
    private long postseq;
    private String email;
}
