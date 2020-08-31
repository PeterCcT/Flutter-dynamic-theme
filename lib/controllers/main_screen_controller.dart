import 'package:mobx/mobx.dart';
part 'main_screen_controller.g.dart';

class MainScreenController = _MainScreenControllerBase
    with _$MainScreenController;

abstract class _MainScreenControllerBase with Store {
  @observable
  bool isSwitched = false;

  @action
  void turnSwitch() => isSwitched = !isSwitched;
}
