import 'package:get/get.dart';
import 'package:getx/model/person.dart';

class PersonController extends GetxController {
  var person = Person(name: 'sidik').obs;

  void changeToUpperCase() {
    person.update((_) {
      person.value.name = person.value.name.toString().toUpperCase();
    });
  }
}
