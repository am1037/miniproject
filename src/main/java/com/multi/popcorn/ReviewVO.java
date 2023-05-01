package com.multi.popcorn;

import lombok.Data;

@Data
public class ReviewVO {
    int review_ID;
    int review_movieID;
    int review_authorID;
    String review_contents;
}
