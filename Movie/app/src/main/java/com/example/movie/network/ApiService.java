package com.example.movie.network;

import com.example.movie.model.BaseResponse;
import com.example.movie.model.HomeData;
import com.example.movie.model.LoginData;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface ApiService {
    String URL = "https://springfilm.herokuapp.com";

    @GET("/apifree/home")
    Call<BaseResponse<HomeData>> apiHome();

    @POST("/api/login")
    Call<BaseResponse<LoginData>> apiLogin();
}
