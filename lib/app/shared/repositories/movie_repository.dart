import 'package:dio/dio.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/http/custom_dio.dart';
import 'package:flutter_movie_app/app/shared/models/credits_model.dart';
import 'package:flutter_movie_app/app/shared/models/movie_details_model.dart';
import 'package:flutter_movie_app/app/shared/models/person_details_model.dart';
import 'package:flutter_movie_app/app/shared/models/person_movie_credits_model.dart';
import 'package:flutter_movie_app/app/shared/models/tv_details_model.dart';
import 'package:flutter_movie_app/app/shared/models/tv_response_model.dart';
import 'package:flutter_movie_app/app/shared/models/tv_season_details_model.dart';
import 'package:flutter_movie_app/app/shared/models/video_response_model.dart';
import 'package:flutter_movie_app/app/shared/models/generic_response_model.dart';
import 'package:flutter_movie_app/app/shared/models/movie_response_model.dart';
import 'package:flutter_movie_app/app/shared/models/genre_response_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MovieRepository {
  final CustomDio _client;

  MovieRepository(this._client);

  Future<MovieResponseModel> getTopRatedMovies() async {
    String url = ApiUrls.topRatedMovies;

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],   // YOUR API KEY
      'language': 'en-US',
      'page': 1
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return MovieResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<MovieResponseModel> getNowPlayingMovies() async {
    String url = ApiUrls.nowPlaying;

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
      'page': 1
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return MovieResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<MovieResponseModel> getTrendingMovies(String timeWindow) async {
    String url = ApiUrls.trendingMovies(timeWindow);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return MovieResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<TvResponseModel> getTrendingTv(String timeWindow) async {
    String url = ApiUrls.trendingTv(timeWindow);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return TvResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<MovieDetailsModel> getMovieDetails(int id) async {
    String url = ApiUrls.movieDetails(id);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return MovieDetailsModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<CreditsModel> getMovieCredits(int id) async {
    String url = ApiUrls.movieCredits(id);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return CreditsModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<MovieResponseModel> getSimilarMovies(int id) async {
    String url = ApiUrls.similarMovies(id);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
      'page': 1
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return MovieResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<PersonDetailsModel> getPersonDetails(int id) async {
    String url = ApiUrls.personDetails(id);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return PersonDetailsModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<PersonMovieCreditsModel> getPersonMovieCredits(int id) async {
    String url = ApiUrls.personMovieCredits(id);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return PersonMovieCreditsModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<TvDetailsModel> getTvDetails(int id) async {
    String url = ApiUrls.tvDetails(id);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return TvDetailsModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<CreditsModel> getTvCredits(int id) async {
    String url = ApiUrls.tvCredits(id);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return CreditsModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<TvSeasonDetailsModel> getTvSeasonDetails(int id, int season) async {
    String url = ApiUrls.tvSeasonDetails(id, season);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return TvSeasonDetailsModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<TvResponseModel> getSimilarTv(int id) async {
    String url = ApiUrls.similarTv(id);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return TvResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<VideoResponseModel> getTvVideos(int id) async {
    String url = ApiUrls.tvVideos(id);

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return VideoResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<GenericResponseModel> search(String query) async {
    String url = ApiUrls.search;

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
      'query': query,
      'page': 1,
      'include_adult': false,
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return GenericResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<GenreResponseModel> getMovieGenreList() async {
    String url = ApiUrls.movieGenres;

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return GenreResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<GenreResponseModel> getTvGenreList() async {
    String url = ApiUrls.tvGenres;

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return GenreResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<MovieResponseModel> discoverMoviesByGenre(int id) async {
    String url = ApiUrls.discoverMovies;

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
      'page': 1,
      'include_adult': false,
      "with_genres": id
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return MovieResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<TvResponseModel> discoverTvByGenre(int id) async {
    String url = ApiUrls.discoverTv;

    Map<String, dynamic> params = {
      'api_key': env['API_KEY'],
      'language': 'en-US',
      'page': 1,
      'include_adult': false,
      "with_genres": id
    };

    try {
      Response response = await _client.get(url, queryParameters: params);
      return TvResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }
}
