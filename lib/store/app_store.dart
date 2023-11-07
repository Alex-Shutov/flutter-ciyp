import 'package:mobx/mobx.dart';
import 'package:pocket/utils/enums/screen_ids.dart';

part 'app_store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store{
  @observable
  bool loggedIn = false;
  LoginScreenId? screenId;
  @action
  void login(){
    loggedIn = true;
    changeScreenId(LoginScreenId.first);
  }

  @action
  void changeScreenId(LoginScreenId id){
    screenId = id;
    print(screenId);
  }
}