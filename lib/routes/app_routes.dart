import 'package:flutter/material.dart';

import 'package:new_project/Features/user_auth/presentation/pages/signup_page.dart';
import 'package:new_project/Features/user_auth/presentation/pages/login_page.dart';
import 'package:new_project/pages/categories_screen/categories_screen.dart';
import 'package:new_project/pages/search_screen/search_screen.dart';
import 'package:new_project/pages/images_container_screen/images_container_screen.dart';
import 'package:new_project/pages/profile_posts_tab_container_screen/profile_posts_tab_container_screen.dart';
import 'package:new_project/pages/profile_photos_tab_container_screen/profile_photos_tab_container_screen.dart';
import 'package:new_project/pages/compose_screen/compose_screen.dart';
import 'package:new_project/pages/app_navigation_screen/app_navigation_screen.dart';
import 'package:new_project/pages/home_page/home_page.dart';
import 'package:new_project/pages/location_types/mountainsListPage.dart'; // Import the MountainListPage
// Import the MountainDetailsPage
import 'package:new_project/pages/location_types/forestsListPage.dart'; // Import the ForestsListPage
// Import the ForestDetailsPage

import 'package:new_project/pages/ContactUs.dart';
import 'package:new_project/pages/RateUs.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';
  static const String loginPage = '/login_page'; // Corrected constant name
  static const String categoriesScreen = '/categories_screen';
  static const String searchScreen = '/search_screen';
  static const String imagesPage = '/images_page';
  static const String imagesContainerScreen = '/images_container_screen';
  static const String profilePostsTabContainerScreen =
      '/profile_posts_tab_container_screen';
  static const String profilePhotosTabContainerScreen =
      '/profile_photos_tab_container_screen';
  static const String composeScreen = '/compose_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String homePage = '/home_page';
  static const String mountainListPage = '/mountain_list_page';
  static const String mountainDetailsPage = '/mountain_details_page';
  static const String forestListPage = '/forest_list_page';
  static const String forestDetailsPage = '/forest_details_page';
  static const String contactUs = '/contact_us';
  static const String rateUs = '/rate_us';

  static Map<String, WidgetBuilder> routes = {
    signUpScreen: (context) => SignUpPage(),
    loginPage: (context) => LoginPage(),
    categoriesScreen: (context) => CategoriesScreen(),
    searchScreen: (context) => SearchScreen(),
    imagesContainerScreen: (context) => ImagesContainerScreen(),
    profilePostsTabContainerScreen: (context) =>
        ProfilePostsTabContainerScreen(),
    profilePhotosTabContainerScreen: (context) =>
        ProfilePhotosTabContainerScreen(),
    composeScreen: (context) => ComposeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    homePage: (context) => HomePage(),
    mountainListPage: (context) => MountainListPage(),
    //mountainDetailsPage: (context) => MountainDetailsPage(),
    forestListPage: (context) => ForestsListPage(),
    //forestDetailsPage: (context) => ForestDetailsPage(),
    contactUs: (context) => ContactUsPage(),
    rateUs: (context) => RateUsPage()
  };
}
