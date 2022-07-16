package com.example.asmspringboot.entity.dto;

import lombok.*;

import java.math.BigDecimal;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class ProductDto {
    private String id;
    private String name;
    private String slug;
    private String description;
    private String detail;
    private String thumbnails; //nhiều ảnh cách nhau bởi dấu
    private BigDecimal price;
    private String createAt;
    private String updateAt;
    private String status;
}
