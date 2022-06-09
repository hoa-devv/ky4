package com.example.demospring.entity;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
public class Product {
    @Id
    private String id;
    private String name;
    private String slug;
    private String description;
    private String detail;
    private String price;
    private String thumbnail;
    private String info_Manu;
    private String importedAt;
    private String updatedAt;
    private String deletedAt;
    private String createdBy;
    private String updatedBy;
    private String deletedBy;


}