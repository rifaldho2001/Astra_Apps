import 'package:get/get.dart';

import '../modules/edit_tugas/bindings/edit_tugas_binding.dart';
import '../modules/edit_tugas/views/edit_tugas_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/tugas/bindings/tugas_binding.dart';
import '../modules/tugas/views/tugas_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.TUGAS,
      page: () => const TugasView(),
      binding: TugasBinding(),
    ),
    GetPage(
<<<<<<< HEAD
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
=======
      name: _Paths.EDIT_TUGAS,
      page: () => const EditTugasView(),
      binding: EditTugasBinding(),
>>>>>>> e5f69d0745617f0d7227f364af59dd27ab002aae
    ),
  ];
}