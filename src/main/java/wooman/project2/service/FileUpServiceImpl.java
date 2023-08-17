package wooman.project2.service;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import wooman.project2.domain.FileUp;
import wooman.project2.repository.FileUpRepository;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor//FileRepository를 생성자로 해주지 않아도 됨.
public class FileUpServiceImpl implements FileUpService {
    private final FileUpRepository repository;

    @Value("${file.dir}")//어노테이션으로 해야함
    private String fileDir;//어플리케이션 프로퍼티에 설정한 경로가 설정이 됨.

    //(1)파일 업로드
    @Override
    public long saveFile(MultipartFile mf) throws IOException {
        if(mf.isEmpty()){
            return -1;
        }
        String origName = mf.getOriginalFilename();//원래 파일 이름 추출
        String uuid = UUID.randomUUID().toString();//파일 이름으로 쓸 uuid 생성
        String extension = origName.substring(origName.lastIndexOf("."));//확장자 추출(ex: .png)
        String savedName= uuid + extension;//uuid(고유하게 겹치지 않는 이름)와 확장자
        String savedPath= fileDir+savedName;//파일 불러올 때 사용할 파일 경로

        FileUp fileUp=FileUp.builder()
                .originalName(origName)//DB의 컬럼 이름과 같아야 함!
                .saveName(savedName)//DB의 컬럼 이름과 같아야 함!
                .fileUpPath(savedPath)//DB의 컬럼 이름과 같아야 함!
                .build();

        mf.transferTo(new File(savedPath));//실제로 로컬에 uuid를 파일명으로 저장
        FileUp saveFile=repository.save(fileUp);//save()에 도메인만 넣어주면 자동으로 insert가 됨. DB에 인서트됨

        return saveFile.getFileSeq();
    }
    //(2)파일 다운로드
    @Override
    public List<FileUp> getFileUpAll() {
        List<FileUp> fileUps = repository.findAll();

        return fileUps;
    }

    @Override
    public FileUp getFileUp(long fileSeq) {
        FileUp fileUp = repository.findById(fileSeq).orElse(null);
        //.orElse(변수): findById()를 한 경우 값이 없으면 null을 넣어주는 메소드
        return fileUp;
    }

    //(3)파일 삭제
    @Override
    @Transactional//중요
    //일의 순서가 DB를 가장 마지막에 수정하는 것이 가장 좋다.
    public void remove(long fileSeq) {
        FileUp fileUp = repository.findById(fileSeq).orElse(null);

        String savedpath = fileUp.getFileUpPath();
        File f = new File(savedpath);
        if(f.exists()){
            f.delete();
        }
        repository.deleteById(fileSeq);
    }
}
