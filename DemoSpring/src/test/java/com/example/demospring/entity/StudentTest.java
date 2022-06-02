package com.example.demospring.entity;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class StudentTest {
    @Test
    public void testCreateStudent(){
        Student student = new Student();
        student.setRollnumber("A001");
        student.setFullname("Bui Hoa");
        student.setAddress("HaiPhong");
        System.out.println(student.toString());
    }

}