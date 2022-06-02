package com.example.demospring.controller;

import com.example.demospring.entity.Student;
import com.oracle.deploy.update.UpdateCheck;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;


/**
 * http://localhost:8080/api/v1/students    | GET       | return list student
 * http://localhost:8080/api/v1/students    | POST      | create new student
 * http://localhost:8080/api/v1/students    | DELETE    | remove  student
 * http://localhost:8080/api/v1/students    | GET       | find student by id
 * http://localhost:8080/api/v1/students    | PUT       | update student
 * */
@RestController
@RequestMapping(path = "api/v1/student")
public class StudentController {
        private static List<Student> list;

        public StudentController(){
            list = new ArrayList<>();
            list.add(Student.builder().rollNumber("A001").fullName("Hoa").builder());
            list.add(Student.builder().rollNumber("A002").fullName("Phuc").builder());
            list.add(Student.builder().rollNumber("A003").fullName("Duong").builder());
            list.add(Student.builder().rollNumber("A004").fullName("Thanh").builder());
            list.add(Student.builder().rollNumber("A005").fullName("Tien").builder());
        }

    @RequestMapping(method = RequestMethod.GET)
    public List<Student> findAll(){
        return list;
    }

    @RequestMapping(method = RequestMethod.POST)
    public Student  save(@RequestBody Student student) {
        list.add(student);
    }

    @RequestMapping(method = RequestMethod.GET,path = "{id}")
    public Student findbyId(@PathVariable String id) {
        int foundIndex = -1;
            for (int i = 0; i < list.size(); i++) {
                if (list.get(i).getRollnumber().equals(id)) {
                    foundIndex = i;
                    break;
                }
            }
            if (foundIndex == -1) {
                return null;
            }
            return list.get(foundIndex);
        }


        @RequestMapping(method = RequestMethod.DELETE, path = "{id}")
        public boolean deleteById (@PathVariable String id){
            int foundIndex = -1;
            for (int i = 0; i < list.size(); i++) {
                if (list.get(i).getRollnumber().equals(id)) {
                    foundIndex = i;
                    break;
                }
            }
            if (foundIndex == -1) {
                return false;
            }
            list.remove(foundIndex);

        }


        @RequestMapping(method = RequestMethod.PUT, path = "{id}")
        public Student update (@PathVariable String id, RequestBody Student UpdateStudent) {
            int foundIndex = -1;
            for (int i = 0; i < list.size(); i++) {
                if (list.get(i).getRollnumber().equals(id)) {
                    foundIndex = i;
                    break;
                }
            }
            if (foundIndex == -1) {
                return null;
            }
            Student existing = list.get(foundIndex);
            existing.setFullname(updateStudent.getFullName());

            return existing;
        }

    }

