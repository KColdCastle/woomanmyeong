package wooman.project2.service;

import org.springframework.web.multipart.MultipartFile;
import wooman.project2.domain.FileUp;

import java.io.IOException;
import java.util.List;

public interface FileUpService {
    //(1) 파일 업로드
    long saveFile(MultipartFile mf) throws IOException;
    //(2) 파일 다운로드
    List<FileUp> getFileUpAll();
    FileUp getFileUp(long file_id);//특정 seq로 파일을 가져오는 메소드

    //(3) 파일 삭제
    void remove(long id);
}
