import 'package:mobx/mobx.dart';

part 'HomePageModel.g.dart';

class HomePageModel = _HomePageModelBase with _$HomePageModel;

abstract class _HomePageModelBase with Store {
  @observable
  // Declare a variable named counter and assign the value =0
  int counter = 0;

  /* Declare a method named setcounter with required parameter as counter and assign the paramter counter value to the this.counter*/

  void setcounter({required int counter}) => this.counter = counter;
}
