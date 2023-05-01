package com.multi.popcorn;

import lombok.Data;

@Data
public class MovieVO {
    int id;
    String title;
    float grade;
    String genre;
    int open;
    String story;
}
