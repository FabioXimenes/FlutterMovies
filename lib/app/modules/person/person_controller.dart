import 'package:flutter_movie_app/app/shared/models/person_details_model.dart';
import 'package:flutter_movie_app/app/shared/models/person_movie_credits_model.dart';
import 'package:flutter_movie_app/app/shared/repositories/movie_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'person_controller.g.dart';

@Injectable()
class PersonController = _PersonControllerBase with _$PersonController;

abstract class _PersonControllerBase with Store {
  MovieRepository _repository = Modular.get();

  @observable
  PersonDetailsModel details;

  @computed
  String get birthday {
    if (details.birthday != null) {
      DateTime date = DateTime.parse(details.birthday);

      Map<int, String> month = {
        1: 'Jan',
        2: 'Feb',
        3: 'Mar',
        4: 'Apr',
        5: 'May',
        6: 'Jun',
        7: 'Jul',
        8: 'Aug',
        9: 'Sep',
        10: 'Oct',
        11: 'Nov',
        12: 'Dec',
      };

      if (details.deathday == null) {
        DateTime now = DateTime.now();

        int age = now.year - date.year - 1;

        if (now.month > date.month) {
          age++;
        } else if (now.month == date.month) {
          if (now.day >= date.day) {
            age++;
          }
        }

        return '${date.day} ${month[date.month]}, ${date.year} ($age years)';
      } else {
        return '${date.day} ${month[date.month]}, ${date.year}';
      }
    } else {
      return 'Not informed';
    }
  }

  @observable
  PersonMovieCreditsModel credits;

  @observable
  bool hasDetails = false;

  @observable
  bool hasCredits = false;

  @action
  getPersonDetails(int id) async {
    details = await _repository.getPersonDetails(id);
    hasDetails = true;
  }

  @action
  getPersonCredits(int id) async {
    credits = await _repository.getPersonMovieCredits(id);
    hasCredits = true;
  }
}
