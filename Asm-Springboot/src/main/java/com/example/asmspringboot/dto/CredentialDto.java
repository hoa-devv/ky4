package com.example.asmspringboot.dto;

import com.example.asmspringboot.entity.Role;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;
import java.util.Set;


@Data
@AllArgsConstructor
public class CredentialDto {
    private String accessToken;
    private String refreshToken;
    private List<String> roles;

}