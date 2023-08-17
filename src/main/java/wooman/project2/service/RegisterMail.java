package wooman.project2.service;

import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.Random;

@Service
public class RegisterMail implements MailServiceInter {

    @Autowired
    JavaMailSender emailSender; // MailConfig에서 등록해둔 Bean을 autowired하여 사용하기

    private String ePw; // 사용자가 메일로 받을 인증번호

    // 메일 내용 작성
    @Override
    public MimeMessage creatMessage(String to) throws MessagingException, UnsupportedEncodingException {
        System.out.println("메일받을 사용자: " + to);
        System.out.println("인증번호: " + ePw);

        MimeMessage message = emailSender.createMimeMessage();

        message.addRecipients(Message.RecipientType.TO, to); // 메일 받을 사용자
        message.setSubject("fallintravel 여행에 빠진 사람들. 인증코드 입니다"); // 이메일 제목
        /*
        String msgg = "";
        // msgg += "<img src=../resources/static/image/emailheader.jpg />"; // header image
        msgg += "<h1></h1>";
        msgg += "<h1></h1>";
        msgg += "<br>";
        msgg += "<p></p>";
        msgg += "<br>";
        msgg += "<br>";
        msgg += "<div align='center' style='border:1px solid black'>";
        msgg += "<h3 style='color:blue'>회원가입 인증코드 입니다</h3>";
        msgg += "<div style='font-size:130%'>";
        msgg += "<strong>" + ePw + "</strong></div><br/>" ; // 메일에 인증번호 ePw 넣기
        msgg += "</div>";
        // msgg += "<img src=../resources/static/image/emailfooter.jpg />"; // footer image

        String msgg = "";
        msgg += "<div style='position: relative;'>";
        msgg += "<img src='https://img.freepik.com/free-photo/low-angle-shot-of-the-mesmerizing-starry-sky_181624-27925.jpg?w=1380&t=st=1692109625~exp=1692110225~hmac=0a2072bcee8eef68e3fbd23e0a6cacff10222c9b9331bf44e5b6eddb4b1ddf3f' style='max-width: 100%; height: 50%;' />";
        msgg += "<div style='position: absolute; top: 0; left: 0; width: 100%; height: 100%; display: flex; justify-content: center; align-items: center; flex-direction: column; text-align: center;'>";
        msgg += "<h3>fallintravel 인증코드 입니다</h3>";
        msgg += "<p><strong>" + ePw + "</strong></p>";
        msgg += "</div>";
        msgg += "</div>";

         */
        String msgg = "";
        msgg += "<div style='position: relative;'>";
        msgg += "<img src='https://postfiles.pstatic.net/MjAyMzA4MTZfMTU0/MDAxNjkyMTc2NzM0ODQy.e9A0Zw2eJgIw3TG_K5za_wLl54y1jghJPxkPQwrRymgg.iGujV9FN1wOnawXDIDXLw2i7MkgjWLmAHmhB2mrk8SIg.PNG.umanmyeong/hello.png?type=w966' style='max-width: 100%; height: 300px;' />";
        //msgg += "<img src='https://img.freepik.com/free-photo/low-angle-shot-of-the-mesmerizing-starry-sky_181624-27925.jpg?w=1380&t=st=1692109625~exp=1692110225~hmac=0a2072bcee8eef68e3fbd23e0a6cacff10222c9b9331bf44e5b6eddb4b1ddf3f' style='max-width: 100%; height: 300px;' />"; // 이미지 높이 수정
        msgg += "<div style='position: absolute; top: 0; left: 0; width: 100%; height: 100%; display: flex; justify-content: center; align-items: center; flex-direction: column; text-align: center;'>";
        msgg += "<h3 style='margin: 0;'>fallintravel 인증코드입니다.</h3>";
        msgg += "<p style='margin: 0;'><strong>" + ePw + "</strong></p>";
        msgg += "</div>";
        msgg += "</div>";


        message.setText(msgg, "utf-8", "html"); // 메일 내용, charset타입, subtype
        // 보내는 사람의 이메일 주소, 보내는 사람 이름
        message.setFrom(new InternetAddress("umanmyeong@naver.com", "fallintravel 여행에 빠진 사람들."));
        System.out.println("********creatMessage 함수에서 생성된 msgg 메시지********" + msgg);

        System.out.println("********creatMessage 함수에서 생성된 리턴 메시지********" + message);


        return message;
    }

    // 랜덤 인증코드 생성
    @Override
    public String createKey() {
        int leftLimit = 48; // numeral '0'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 10;
        Random random = new Random();
        String key = random.ints(leftLimit, rightLimit + 1)
                .filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
                .limit(targetStringLength)
                .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
                .toString();
        System.out.println("생성된 랜덤 인증코드"+ key);
        return key;
    }

    // 메일 발송
    // sendSimpleMessage 의 매개변수 to는 이메일 주소가 되고,
    // MimeMessage 객체 안에 내가 전송할 메일의 내용을 담는다
    // bean으로 등록해둔 javaMail 객체를 사용하여 이메일을 발송한다
    @Override
    public String sendSimpleMessage(String to) throws Exception {

        ePw = createKey(); // 랜덤 인증코드 생성
        System.out.println("********생성된 랜덤 인증코드******** => " + ePw);
        MimeMessage message = creatMessage(to); // "to" 로 메일 발송

        System.out.println("********생성된 메시지******** => " + message);


        try { // 예외처리
            emailSender.send(message);
        } catch (Exception e) {
            e.printStackTrace();
            throw new IllegalArgumentException();
        }

        return ePw; // 메일로 사용자에게 보낸 인증코드를 서버로 반환! 인증코드 일치여부를 확인하기 위함
    }

}