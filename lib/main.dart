import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

Future main() async {
  await DotEnv.load();
  runApp(ModularApp(module: AppModule()));
}
