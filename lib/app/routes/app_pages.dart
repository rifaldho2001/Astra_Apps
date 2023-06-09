import 'package:get/get.dart';

import '../modules/edit_tugas/bindings/edit_tugas_binding.dart';
import '../modules/edit_tugas/views/edit_tugas_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/tambah_tugas/bindings/tambah_tugas_binding.dart';
import '../modules/tambah_tugas/views/tambah_tugas_view.dart';
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
      page: () =>  ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.TUGAS,
      page: () => TugasView(),
      binding: TugasBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.TAMBAH_TUGAS,
      page: () => TambahTugasView(),
      binding: TambahTugasBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_TUGAS,
      page: () => EditTugasView(),
      binding: EditTugasBinding(),
    ),
  ];
}
