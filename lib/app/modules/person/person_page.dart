import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/widgets/expandable_text/expandable_text_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/production_list_widget.dart';
import 'person_controller.dart';

class PersonPage extends StatefulWidget {
  final String personId;
  const PersonPage({Key key, this.personId}) : super(key: key);

  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends ModularState<PersonPage, PersonController> {
  //use 'controller' variable to access controller
  @override
  void initState() {
    controller.getPersonDetails(int.parse(widget.personId));
    controller.getPersonCredits(int.parse(widget.personId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Observer(
              name: 'personImage',
              builder: (_) {
                return controller.hasDetails
                    ? Container(
                        height: 280,
                        width: _size.width,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            controller.details.profile_path != null
                                ? Container(
                                    width: 140,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(ApiUrls.image(
                                            controller.details.profile_path)),
                                      ),
                                    ),
                                  )
                                : Container(
                                    width: 140,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.person,
                                        color: Colors.white, size: 60),
                                  ),
                            Text(
                              controller.details.name,
                              style: TextStyle(
                                color: Colors.white,
                                height: 3.0,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Column(
                              children: [
                                Text('Born: ${controller.birthday}',
                                    style: TextStyle(color: Colors.grey)),
                                Text(
                                    'From: ${controller.details.place_of_birth}',
                                    style: TextStyle(color: Colors.grey))
                              ],
                            )
                          ],
                        ),
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              }),
          Container(
            width: _size.width,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Biography',
              style: TextStyle(color: Colors.grey, fontSize: 14),
              textAlign: TextAlign.start,
            ),
          ),
          Observer(
              name: 'personBiography',
              builder: (_) {
                return controller.hasDetails
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: controller.details.biography == ''
                            ? Text(
                                'No biography found',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            : ExpandableTextWidget(
                                text: controller.details.biography,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                                defaultLines: 8,
                              ),
                      )
                    : Center();
              }),
          SizedBox(
            height: 15,
          ),
          Container(
            width: _size.width,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Movies',
              style: TextStyle(color: Colors.grey, fontSize: 14),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Observer(
            name: 'personMovies',
            builder: (_) {
              return controller.hasCredits
                  ? ProductionListWidget(productions: controller.credits.cast)
                  : Center();

              // Container(
              //   height: 200,
              //   padding: EdgeInsets.symmetric(horizontal: 10),
              //   width: _size.width,
              //   child: controller.hasCredits
              //       ? ListView.builder(
              //           scrollDirection: Axis.horizontal,
              //           itemCount: controller.credits?.cast?.length,
              //           itemBuilder: (_, index) {
              //             return controller.credits?.cast[index]?.poster_path !=
              //                     null
              //                 ? ProductionCardWidget(
              //                     production: controller.credits.cast[index],
              //                   )
              //                 : Center();
              //           },
              //         )
              //       : Center(child: CircularProgressIndicator()),
              // );
            },
          ),
        ],
      ),
    );
  }
}
