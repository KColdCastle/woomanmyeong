package wooman.project2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import wooman.project2.domain.FileUp;

public interface FileUpRepository  extends JpaRepository<FileUp, Long> {
}
