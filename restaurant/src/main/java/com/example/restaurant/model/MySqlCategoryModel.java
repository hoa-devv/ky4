package com.example.restaurant.model;

import com.example.restaurant.entity.Category;
import com.example.restaurant.entity.myenum.CategoryStatus;
import com.example.restaurant.util.ConnectionHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

public class MySqlCategoryModel implements CategoryModel {


    @Override
    public Category save(Category obj) {
        try {
            Connection connection = ConnectionHelper.getConnection();
            String sqlQuery = "insert into categories " +
                    "(name, createdAt, updatedAt, status) " +
                    "values " +
                    "(?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, obj.getName());
            preparedStatement.setString(2, obj.getCreatedAt().toString());
            preparedStatement.setString(3, obj.getUpdatedAt().toString());
            preparedStatement.setInt(4, obj.getStatus().getValue());
            preparedStatement.execute();
            System.out.println("Action success!");
            return obj;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Category findByName(String name) {
        Category category = null;
        try {
            Connection connection = ConnectionHelper.getConnection();
            String sqlQuery = "select * from categories where status = ? and name = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setInt(1, CategoryStatus.ACTIVE.getValue());
            preparedStatement.setString(2, name);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                LocalDateTime createdAt =
                        LocalDateTime.ofInstant(resultSet.getTimestamp("createdAt").toInstant(), ZoneId.systemDefault());
                LocalDateTime updatedAt =
                        LocalDateTime.ofInstant(resultSet.getTimestamp("updatedAt").toInstant(), ZoneId.systemDefault());
                int intStatus = resultSet.getInt("status");
                category = new Category(id, name);
                category.setCreatedAt(createdAt);
                category.setUpdatedAt(updatedAt);
                category.setStatus(CategoryStatus.of(intStatus));
            }
            System.out.println("Action success!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return category;
    }

    @Override
    public List<Category> findAll() {
        List<Category> list = new ArrayList<>();
        try {
            Connection connection = ConnectionHelper.getConnection();
            String sqlQuery = "select * from categories where status = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setInt(1, CategoryStatus.ACTIVE.getValue());
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                LocalDateTime createdAt =
                        LocalDateTime.ofInstant(resultSet.getTimestamp("createdAt").toInstant(), ZoneId.systemDefault());
                LocalDateTime updatedAt =
                        LocalDateTime.ofInstant(resultSet.getTimestamp("updatedAt").toInstant(), ZoneId.systemDefault());
                int intStatus = resultSet.getInt("status");
                Category obj = new Category(id, name);
                obj.setCreatedAt(createdAt);
                obj.setUpdatedAt(updatedAt);
                obj.setStatus(CategoryStatus.of(intStatus));
                list.add(obj);
            }
            System.out.println("Action success!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean delete(int id) {
        try {
            Connection connection = ConnectionHelper.getConnection();
            String sqlQuery = "update categories " +
                    "set status = ? where id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setInt(1, CategoryStatus.DELETED.getValue());
            preparedStatement.setInt(2, id);
            preparedStatement.execute();
            System.out.println("Action success!");
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
