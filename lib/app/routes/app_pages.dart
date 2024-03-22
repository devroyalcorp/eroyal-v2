import 'package:get/get.dart';

import 'package:eroyal/app/modules/bottom_navigation_bar/bindings/bottom_navigation_bar_binding.dart';
import 'package:eroyal/app/modules/bottom_navigation_bar/views/bottom_navigation_bar_view.dart';
import 'package:eroyal/app/modules/forgot_password/bindings/forgot_password_binding.dart';
import 'package:eroyal/app/modules/forgot_password/views/forgot_password_view.dart';
import 'package:eroyal/app/modules/forgot_password/views/widgets/reset_password.dart';
import 'package:eroyal/app/modules/home/bindings/home_binding.dart';
import 'package:eroyal/app/modules/home/views/home_view.dart';
import 'package:eroyal/app/modules/login/bindings/login_binding.dart';
import 'package:eroyal/app/modules/login/views/login_view.dart';
import 'package:eroyal/app/modules/notification/bindings/notification_binding.dart';
import 'package:eroyal/app/modules/notification/views/notification_view.dart';
import 'package:eroyal/app/modules/attendance/bindings/attendance_binding.dart';
import 'package:eroyal/app/modules/attendance/views/attendance_view.dart';
import 'package:eroyal/app/modules/profile/bindings/profile_binding.dart';
import 'package:eroyal/app/modules/profile/views/profile_view.dart';
import 'package:eroyal/app/modules/profile_edit/bindings/profile_edit_binding.dart';
import 'package:eroyal/app/modules/profile_edit/views/profile_edit_view.dart';
import 'package:eroyal/app/modules/profile_my_customers/bindings/profile_my_customers_binding.dart';
import 'package:eroyal/app/modules/profile_my_customers/views/profile_my_customers_view.dart';
import 'package:eroyal/app/modules/profile_my_team/bindings/profile_my_team_binding.dart';
import 'package:eroyal/app/modules/profile_my_team/views/profile_my_team_view.dart';
import 'package:eroyal/app/modules/splash/bindings/splash_screen_binding.dart';
import 'package:eroyal/app/modules/splash/views/splash_screen_view.dart';
import 'package:eroyal/app/modules/tracking_document/bindings/tracking_document_binding.dart';
import 'package:eroyal/app/modules/tracking_document/views/tracking_document_view.dart';

import '../core/widgets/coming_soon.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.ATTENDANCE,
      page: () => const AttendanceView(),
      binding: AttendanceBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION_BAR,
      page: () => const BottomNavigationBarView(),
      binding: BottomNavigationBarBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_EDIT,
      page: () => const ProfileEditView(),
      binding: ProfileEditBinding(),
    ),
    GetPage(
      name: _Paths.COMING_SOON,
      page: () => const ComingSoonScreen(),
    ),
    GetPage(
      name: _Paths.PROFILE_MY_TEAM,
      page: () => const ProfileMyTeamView(),
      binding: ProfileMyTeamBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_MY_CUSTOMERS,
      page: () => const ProfileMyCustomersView(),
      binding: ProfileMyCustomersBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => const ResetPasswordView(),
    ),
    GetPage(
      name: _Paths.TRACKING_DOCUMENT,
      page: () => const TrackingDocumentView(),
      binding: TrackingDocumentBinding(),
    ),
  ];
}
