import 'package:contra/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class WelcomePageController extends GetxController {


  @override
  void onInit() {
    redirect();
    print('>>> WController init');
    super.onInit();
  }

  @override
  void onReady() {
    print('>>> WController ready');
    super.onReady();
  }

  @override
  void onClose() {
    print('>>> WController close');
    super.onClose();
  }
  
  redirect() async{
    if (await FirebaseAuth.instance.currentUser?.uid != null) {
     Get.toNamed(Routes.joblisting);
    }
  }
}
