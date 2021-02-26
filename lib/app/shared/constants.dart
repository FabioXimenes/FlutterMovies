const String BASE_URL = 'https://api.themoviedb.org/3';

class ApiUrls {
  static const String topRatedMovies = '/movie/top_rated';
  static const String nowPlaying     = '/movie/now_playing';
  static const String discoverMovies = '/discover/movie';
  static const String discoverTv     = '/discover/tv';
  static const String movieGenres    = '/genre/movie/list';
  static const String tvGenres       = '/genre/movie/list';
  static const String search         = '/search/multi';
  static Function movieDetails       = (int id)             => '/movie/$id';
  static Function movieCredits       = (int id)             => '/movie/$id/credits';
  static Function movieVideos        = (int id)             => '/movie/$id/videos';
  static Function similarMovies      = (int id)             => '/movie/$id/similar';
  static Function trendingMovies     = (String timeWindow)  => '/trending/movie/$timeWindow';
  static Function trendingTv         = (String timeWindow)  => '/trending/tv/$timeWindow';
  static Function trendingPersons    = (String timeWindow)  => '/trending/persons/$timeWindow';
  static Function personDetails      = (int id)             => '/person/$id';
  static Function personMovieCredits = (int id)             => '/person/$id/movie_credits';
  static Function tvDetails          = (int id)             => '/tv/$id';
  static Function tvSeasonDetails    = (int id, int season) => '/tv/$id/season/$season';
  static Function tvCredits          = (int id)             => '/tv/$id/credits';
  static Function similarTv          = (int id)             => '/tv/$id/similar';
  static Function tvVideos           = (int id)             => '/tv/$id/videos';
  static Function image              = (String path)        => 'https://image.tmdb.org/t/p/w500/$path';
  static Function videoThumbnail     = (String key)         => 'https://img.youtube.com/vi/$key/0.jpg';
}

class AppRoutes {
  static const home             = '/home';
  static const movies           = '/movies';
  static const tv               = '/tv';
  static const movieDetails     = '/movie_details';
  static const tvDetails        = '/tv_details';
  static const person           = '/person';
  static const genre            = '/genre';
  static const videoPlayer      = '/video_player';
  static Function movieId       = (int id)              => '/movie_details/$id';
  static Function tvId          = (int id)              => '/tv_details/$id';
  static Function personId      = (int id)              => '/person/$id';
  static Function genreRoute    = (int id, String name) => '/genre/$id/$name';
  static Function videoPlayerId = (String id)           => '/video_player/$id';
}
