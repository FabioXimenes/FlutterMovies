import 'package:flutter_movie_app/app/modules/genre/genre_module.dart';
import 'package:flutter_movie_app/app/modules/movie_details/movie_details_module.dart';
import 'package:flutter_movie_app/app/modules/tv_details/tv_details_module.dart';

import 'shared/widgets/expandable_text/expandable_text_controller.dart';
import 'package:flutter_movie_app/app/modules/home/home_controller.dart';
import 'package:flutter_movie_app/app/modules/person/person_module.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/http/custom_dio.dart';
import 'package:flutter_movie_app/app/shared/repositories/movie_repository.dart';
import 'package:flutter_movie_app/app/splash/splash_page.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app_widget.dart';
import 'package:flutter_movie_app/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $ExpandableTextController,
        $AppController,
        $HomeController,
        $ExpandableTextController,
        Bind((i) => MovieRepository(i.get())),
        Bind((i) => CustomDio()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => SplashPage()),
        ModularRouter(AppRoutes.home, module: HomeModule()),
        ModularRouter(AppRoutes.movieDetails, module: MovieDetailsModule()),
        ModularRouter(AppRoutes.tvDetails, module: TvDetailsModule()),
        ModularRouter(AppRoutes.person, module: PersonModule()),
        ModularRouter(AppRoutes.genre, module: GenreModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
