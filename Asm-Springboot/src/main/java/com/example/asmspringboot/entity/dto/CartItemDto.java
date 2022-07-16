package com.example.asmspringboot.entity.dto;


import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CartItemDto {
    private String productId;
    private int quantity;
}
