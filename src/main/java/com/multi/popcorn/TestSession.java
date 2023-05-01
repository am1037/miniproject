package com.multi.popcorn;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/*
# URL of the theater page
#CGV_THEATER_URL = 'http://www.cgv.co.kr/theaters/?areacode=01&theaterCode=0013'     # CGV 용산아이파크몰
CGV_THEATER_URL = 'http://www.cgv.co.kr/theaters/?areacode=02&theaterCode=0004&date=' #오리
DATE = '20230505' #datetime.datetime.now().strftime('%Y%m%d') # 날짜

option = webdriver.ChromeOptions()
option.add_experimental_option("useAutomationExtension", False)
option.add_experimental_option("excludeSwitches", ['enable-automation'])
driver = webdriver.Chrome(executable_path='chromedriver', options=option)
driver.delete_all_cookies()

#1. 날짜를 가져와야.. -> 날짜가 바뀌도록 할 수 있어야.. OK!
#2. 영화 제목을 가져와야.. -> OK!
#3. 상영관, 상영 시간을 가져와야.. -> OK!

driver.get(url=CGV_THEATER_URL+DATE)
innerIframe = driver.find_element(By.ID, "ifrm_movie_time_table")
driver.switch_to.frame(innerIframe)


movies = driver.find_element(By.CLASS_NAME, "showtimes-wrap").find_element(By.CLASS_NAME, "sect-showtimes").find_elements(By.CLASS_NAME, "col-times")
for m in movies:
    print("----------")
    print(m.find_element(By.CLASS_NAME, "info-movie").find_element(By.TAG_NAME, "strong").text) #영화 제목
    halls = m.find_elements(By.CLASS_NAME, "type-hall")
    for h in halls:
        hall_list = h.find_element(By.CLASS_NAME, "info-hall").find_elements(By.TAG_NAME, "li")
        hall_name = hall_list[1].text #상영관
        timetable = h.find_element(By.CLASS_NAME, "info-timetable").find_elements(By.TAG_NAME, "em") #상영 시간
        for t in timetable:
            print(f"{hall_name} {t.text}")
 */
public class TestSession {
    public static void main(String[] args){

    String url = "http://www.cgv.co.kr/theaters/?areacode=02&theaterCode=0004&date=";
    String date = "20230506";

        WebDriver driver = new ChromeDriver();
        driver.get(url+date);
        driver.switchTo().frame("ifrm_movie_time_table");
        List<WebElement> coltimesList = driver.findElement(By.className("showtimes-wrap"))
                                .findElement(By.className("sect-showtimes"))
                                .findElements(By.className("col-times"));
        for(WebElement we : coltimesList){
            System.out.println("----------");
            System.out.println(we.findElement(By.className("info-movie"))
                                .findElement(By.tagName("strong")).getText());
            List<WebElement> typehallList = we.findElements(By.className("type-hall"));
            for(WebElement h : typehallList){
                List<WebElement> showList = h.findElement(By.className("info-timetable")).findElements(By.tagName("li"));
                for(WebElement s : showList){
                    System.out.println(s.getText());
                }
            }
        }
        driver.close();

    }
}
