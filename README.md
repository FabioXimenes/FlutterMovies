# flutter_movie_app
A flutter movie app made with [Mobx](https://github.com/mobxjs/mobx.dart) and [Flutter Modular](https://github.com/Flutterando/modular) using [The Movie Database API](https://developers.themoviedb.org/3/getting-started/introduction).


## Dependencies
* [smooth_star_rating](https://pub.dev/packages/smooth_star_rating)
* [dio](https://pub.dev/packages/dio)
* [mobx](https://pub.dev/packages/mobx)
* [flutter_mobx](https://pub.dev/packages/flutter_mobx)
* [flutter_modular](https://pub.dev/packages/flutter_modular)
* [json_annotation](https://pub.dev/packages/json_annotation)
* [json_serializable](https://pub.dev/packages/json_serializable)


## Video

A short video of the app can be found by clicking [here](https://youtu.be/MSn3pyJYztk)

## Screenshots

Splash Page               |  Home Page               | Home Page Drawer part 1             |  Home Page Drawer part 2
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss0.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss1.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss11.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss12.png?raw=true)|

Movie Details Page part 1               |  Movie Details Page part 2               | Tv Details Page part 1               |  Tv Details Page part 2 - episodes
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss2.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss3.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss4.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss5.png?raw=true)|

Tv Details Page part 3 - trailers               |  Tv Details Page part 4 - similar               | Search Page part 1               |  Search Page part 2
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss6.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss7.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss8.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss9.png?raw=true)|

Search Page part 3               |  Person Page               | Genre Page part 1               | Genre Page part 2
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss10.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss15.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss13.png?raw=true)|![](https://github.com/FabioXimenes/flutter_movie_app/blob/master/screenshots/ss14.png?raw=true)|

## Get started

- Clone this project
- Open it in Android Studio or Visual Studio Code or any other IDE that supports Flutter
- Run flutter doctor just to make sure everything is Ok
- Run pub get to install all dependencies
- Go to https://www.themoviedb.org/ and grab an API Key (register if necessary)
- Now go to api_key.dart then paste your key. Should look like: const String API_KEY = '<YOUR_API_KEY>';
- Run the project and voila


## IMPORTANT!
Add your [The Movie Database](https://developers.themoviedb.org/3/getting-started/introduction) **API KEY** at _api_key.dart_ located in _lib/app/shared/_ folder.
