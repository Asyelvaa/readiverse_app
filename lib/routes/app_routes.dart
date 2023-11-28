import 'package:get/get.dart';
import 'package:readiverse_app/models/book_model.dart';
import 'package:readiverse_app/pages/detail_book/detail_book_page.dart';
import 'package:readiverse_app/pages/home_page/home_page.dart';
import 'package:readiverse_app/pages/login_page.dart';
import 'package:readiverse_app/pages/profile_page/profile_page.dart';
import 'package:readiverse_app/pages/detail_book/read_book.dart';
import 'package:readiverse_app/pages/search_page/search_page.dart';
import 'package:readiverse_app/pages/sign_up.dart';
import 'package:readiverse_app/pages/splashscreen.dart';

class Routes {
  static String LOGIN_PAGE = '/';
  static String REGISTER_PAGE = '/register';
  static String HOME_PAGE = '/home';
  static String SEARCH_PAGE = '/search';
  static String PROFILE_PAGE = '/profile';
  static String DETAIL_BOOK_PAGE = '/detail-book';
  static String READ_BOOK_PAGE = '/read-book';
  static String SPLASH_SCREEN = '/splash-screen';
}

final getPages = [
  GetPage(
    name: Routes.LOGIN_PAGE,
    page: () => LoginPage(),
  ),
  GetPage(
    name: Routes.REGISTER_PAGE,
    page: () =>  SignUp(),
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
    page: () => DetailPage(),
  ),
  GetPage(
    name: Routes.READ_BOOK_PAGE,
    page: () => ReadBookPage(),
  ),
  GetPage(
    name: Routes.SPLASH_SCREEN,
    page: () => SplashScreen(),
  ),
];