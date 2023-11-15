import 'package:get/get.dart';
import 'package:readiverse_app/pages/detail.dart';
import 'package:readiverse_app/pages/home_page.dart';
import 'package:readiverse_app/pages/login.page.dart';
import 'package:readiverse_app/pages/profile_page.dart';
import 'package:readiverse_app/pages/read_book.dart';
import 'package:readiverse_app/pages/search_page.dart';
import 'package:readiverse_app/pages/sign_up.dart';

class Routes {
  static String LOGIN_PAGE = '/login';
  static String REGISTER_PAGE = '/register';
  static String HOME_PAGE = '/';
  static String SEARCH_PAGE = '/search';
  static String PROFILE_PAGE = '/profile';
  static String DETAIL_BOOK_PAGE = '/detail-book';
  static String READ_BOOK_PAGE = '/read-book';
}

final getPages = [
  GetPage(
    name: Routes.LOGIN_PAGE,
    page: () => const LoginPage(),
  ),
  GetPage(
    name: Routes.REGISTER_PAGE,
    page: () => const SignUp(),
  ),
  GetPage(
    name: Routes.HOME_PAGE,
    page: () => HomePage(),
  ),
  GetPage(
    name: Routes.SEARCH_PAGE,
    page: () => SearchPage(),
  ),
  GetPage(
    name: Routes.PROFILE_PAGE,
    page: () => ProfilePage(), 
  ),
  GetPage(
    name: Routes.DETAIL_BOOK_PAGE,
    page: () => const Detail(),
  ),
  GetPage(
    name: Routes.READ_BOOK_PAGE,
    page: () => const ReadBookPage(),
  ),
];