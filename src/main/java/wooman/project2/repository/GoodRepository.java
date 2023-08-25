package wooman.project2.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import wooman.project2.domain.Good;
import wooman.project2.service.GoodService;

import java.sql.Date;
public interface GoodRepository extends JpaRepository<Good, Long> {
}
