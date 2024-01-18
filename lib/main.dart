import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:new_project/firebase_options.dart';
import 'package:new_project/Features/user_auth/presentation/pages/login_page.dart';
import 'package:new_project/Features/user_auth/presentation/pages/signup_page.dart';
import 'package:new_project/Features/user_auth/presentation/pages/home_page.dart';
import 'package:new_project/Features/app/splash_screen/splash_screen.dart';
import 'package:new_project/pages/ContactUs.dart';
import 'package:new_project/pages/RateUs.dart';
import 'package:new_project/pages/app_navigation_screen/app_navigation_screen.dart';
import 'package:new_project/pages/categories_screen/categories_screen.dart';
import 'package:new_project/pages/compose_screen/compose_screen.dart';
import 'package:new_project/pages/images_container_screen/images_container_screen.dart';
import 'package:new_project/pages/location_types/forestsListPage.dart';
import 'package:new_project/pages/location_types/mountainsListPage.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure Flutter binding is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Initialize Firebase

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
              // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
              child: LoginPage(),
            ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/categories_screen': (context) => CategoriesScreen(),

        '/imagesContainerScreen': (context) => ImagesContainerScreen(),

        '/composeScreen': (context) => ComposeScreen(),
        '/appNavigationScreen': (context) => AppNavigationScreen(),

        '/mountainListPage': (context) => MountainListPage(),
        //mountainDetailsPage: (context) => MountainDetailsPage(),
        '/forestListPage': (context) => ForestsListPage(),
        //forestDetailsPage: (context) => ForestDetailsPage(),
        '/contactUs': (context) => ContactUsPage(),
        '/rateUs': (context) => RateUsPage()
      },
    );
  }
}
