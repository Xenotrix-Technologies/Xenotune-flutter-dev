import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

class UserController extends GetxController {
  var username = ''.obs;

  @override
  void onInit() {
    super.onInit();
    username.value = GetStorage().read('username') ?? 'User';
  }

  void updateUsername(String newName) {
    username.value = newName;
    GetStorage().write('username', newName);
  }
}
