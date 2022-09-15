package com.example.movie;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.ImageView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.movie.adapter.SectionAdapter;
import com.example.movie.event.MessageEvent;
import com.example.movie.model.BaseResponse;
import com.example.movie.model.HomeData;
import com.example.movie.model.LoginData;
import com.example.movie.model.Movie;
import com.example.movie.model.Section;
import com.example.movie.network.ApiService;
import com.synnapps.carouselview.CarouselView;
import com.synnapps.carouselview.ImageClickListener;
import com.synnapps.carouselview.ImageListener;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class MainActivity extends AppCompatActivity {
    CarouselView carouselView;
    SectionAdapter adapter;
    int[] sampleImages = {R.drawable.banner1,
            R.drawable.banner2,
            R.drawable.banner3};
    List<Movie> listMovies = new ArrayList<>();
    List<Section> listSection = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initBanner();
        initView();
    }

    private void initView() {
        RecyclerView rvHome = findViewById(R.id.rvHome);
        //B1: Data
        callApi();

        //B2: Layout
        RecyclerView.LayoutManager layoutManager =
                new LinearLayoutManager(this, LinearLayoutManager.VERTICAL, false);

        //B3: Adapter
        adapter = new SectionAdapter(this, listSection);

        //B4:
        rvHome.setLayoutManager(layoutManager);
        rvHome.setAdapter(adapter);
    }

    private void callApi() {
        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl(ApiService.URL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();

        ApiService service = retrofit.create(ApiService.class);
        service.apiHome().enqueue(new Callback<BaseResponse<HomeData>>() {
            @Override
            public void onResponse(Call<BaseResponse<HomeData>> call, Response<BaseResponse<HomeData>> response) {
                Log.d("TAG", "onResponse: "+response.body());
                if (response.body() != null) {
                    initData(response.body());
                }
            }

            @Override
            public void onFailure(Call<BaseResponse<HomeData>> call, Throwable t) {
                Log.d("TAG", "onFailure: "+t);
            }
        });
    }

    @Override
    public void onStart() {
        super.onStart();
        EventBus.getDefault().register(this);
    }

    @Override
    public void onStop() {
        super.onStop();
        EventBus.getDefault().unregister(this);
    }

    private void initData(BaseResponse<HomeData> response) {
        initSection("Trending", response.getData().getTrending());
        initSection("Hot", response.getData().getHot());
        initSection("Popular", response.getData().getPopular());
        initSection("Upcoming", response.getData().getUpcoming());
        adapter.reloadData(listSection);
    }

    private void initSection(String title, List<Movie> movies) {
        Section section = new Section(title, movies);
        listSection.add(section);
    }

    private void initBanner() {
        carouselView = findViewById(R.id.carouselView);
        carouselView.setPageCount(sampleImages.length);
        carouselView.setImageListener(new ImageListener() {
            @Override
            public void setImageForPosition(int position, ImageView imageView) {
                imageView.setImageResource(sampleImages[position]);
            }
        });
        carouselView.setImageClickListener(new ImageClickListener() {
            @Override
            public void onClick(int position) {
                Log.d("TAG", "onClick: "+position);
            }
        });
    }

    private void goToDetail(Movie movie) {
        Intent intent = new Intent(this, DetailActivity.class);
        intent.putExtra("MOVIE", movie);
        startActivity(intent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(MessageEvent.MovieEvent movieEvent) {
        Movie movie = movieEvent.getMovie();
        Log.d("TAG", "onMessageEvent: "+movie.getName());
        goToDetail(movie);
    }

}