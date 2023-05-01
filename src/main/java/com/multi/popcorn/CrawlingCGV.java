package com.multi.popcorn;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import java.util.ArrayList;
import java.util.List;

@Component
public class CrawlingCGV {
    String url = "http://www.cgv.co.kr/theaters/?areacode=02&theaterCode=0004&date="; //오리

    public List<MovieScreen> crawling(String date) {
        WebDriver driver = new ChromeDriver();
        List<MovieScreen> msList = new ArrayList<>();
        driver.get(url+date);
        driver.switchTo().frame("ifrm_movie_time_table");
        List<WebElement> coltimesList = driver.findElement(By.className("showtimes-wrap"))
                .findElement(By.className("sect-showtimes"))
                .findElements(By.className("col-times"));
        for(WebElement we : coltimesList){
            //System.out.println("----------");
            String movieTitle = we.findElement(By.className("info-movie"))
                                  .findElement(By.tagName("strong")).getText();
            List<WebElement> typehallList = we.findElements(By.className("type-hall"));
            for(WebElement h : typehallList){
                List<WebElement> showList = h.findElement(By.className("info-timetable")).findElements(By.tagName("li"));
                for(WebElement s: showList){
                    MovieScreen ms = new MovieScreen();
                    ms.setTitle(movieTitle);
                    ms.setScreen(h.findElement(By.className("info-hall")).findElements(By.tagName("li")).get(1).getText());
                    ms.setTime(s.getText());
                    msList.add(ms);
                    System.out.println(ms);
                }
            }
        }
        driver.close();

        return msList;
    }
}
