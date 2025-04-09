//with bloc code of main.dart
// import 'package:easy_grab/Bloc/service_bloc.dart';
// import 'package:easy_grab/Screens/homePage.dart';
// import 'package:easy_grab/repositories/serviceRepositries.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<ServiceBloc>(
//           create: (context) => ServiceBloc(ServiceRepository())..add(FetchServicesEvent()),
//         ),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Easy Grab',
//         theme: ThemeData(
//           primarySwatch: Colors.orange,
//           fontFamily: 'Poppins',
//         ),
//         home: HomePage(),
//       ),
//     );
//   }
// }






//without bloc code of main.dart .#routing
// import 'package:easy_grab/Bloc/service_bloc.dart';
// import 'package:easy_grab/Screens/InvestmentPage.dart';
// import 'package:easy_grab/Screens/aboutUsPage.dart';
// import 'package:easy_grab/Screens/b2bPage.dart';
// import 'package:easy_grab/Screens/contactPage.dart';
// import 'package:easy_grab/Screens/galleryPage.dart';
// import 'package:easy_grab/Screens/homePage.dart';
// import 'package:easy_grab/Screens/jobsPage.dart';
// import 'package:easy_grab/Screens/servicePage.dart';
// import 'package:easy_grab/repositories/serviceRepositries.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';


// void main() {
 
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final GoRouter _router = GoRouter(
//     routes: [
//       GoRoute(
//         path: Routes.home,
//         builder: (context, state) => HomePage(),
//       ),
//       GoRoute(
//         path: Routes.aboutUs,
//         builder: (context, state) => Aboutuspage(),
//       ),
//       GoRoute(
//         path: Routes.b2b,
//         builder: (context, state) => B2Bpage(),
//       ),
//       GoRoute(
//         path: Routes.investment,
//         builder: (context, state) => Investmentpage(),
//       ),
//       GoRoute(
//         path: Routes.jobs,
//         builder: (context, state) => Jobspage(),
//       ),
//       GoRoute(
//         path: Routes.service,
//         builder: (context, state) => Servicepage(),
//       ),
//         GoRoute(
//         path: Routes.blog,
//         builder: (context, state) => Servicepage(),
//       ),
//         GoRoute(
//         path: Routes.contact,
//         builder: (context, state) => Contactpage(),
//       ),
//         GoRoute(
//         path: Routes.gallery,
//         builder: (context, state) => Gallerypage(),
//       ),
//     ],
//     errorBuilder: (context, state) => Scaffold(
//       body: Center(
//         child: Text('No route defined for ${state.uri.toString()}'),
//       ),
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<ServiceBloc>(
//           create: (context) => ServiceBloc(ServiceRepository())..add(FetchServicesEvent()),
//         ),
//       ],
//       child: MaterialApp.router(
//         debugShowCheckedModeBanner: false,
//         title: 'Easy Grab',
//         theme: ThemeData(
//           primarySwatch: Colors.orange,
//           fontFamily: 'Poppins',
//         ),
//         routerConfig: _router,
//       ),
//     );
//   }
// }

// class Routes {
//   static const String home = '/';
//   static const String aboutUs = '/about-us';
//   static const String b2b = '/b2b';
//   static const String jobs = '/jobs';
//   static const String service = '/service';
//   static const String investment = '/investment';
//   static const String contact = '/contact';
//   static const String blog = '/blog';
//   static const String gallery = '/gallery';
// }





// no hash routing
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:easy_grab/Bloc/service_bloc.dart';
import 'package:easy_grab/Screens/InvestmentPage.dart';
import 'package:easy_grab/Screens/aboutUsPage.dart';
import 'package:easy_grab/Screens/b2bPage.dart';
import 'package:easy_grab/Screens/contactPage.dart';
import 'package:easy_grab/Screens/galleryPage.dart';
import 'package:easy_grab/Screens/homePage.dart';
import 'package:easy_grab/Screens/jobsPage.dart';
import 'package:easy_grab/Screens/servicePage.dart';
import 'package:easy_grab/repositories/serviceRepositries.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: Routes.aboutUs,
        builder: (context, state) => Aboutuspage(),
      ),
      GoRoute(
        path: Routes.b2b,
        builder: (context, state) => B2Bpage(),
      ),
      GoRoute(
        path: Routes.investment,
        builder: (context, state) => Investmentpage(),
      ),
      GoRoute(
        path: Routes.jobs,
        builder: (context, state) => Jobspage(),
      ),
      GoRoute(
        path: Routes.service,
        builder: (context, state) => Servicepage(),
      ),
      GoRoute(
        path: Routes.blog,
        builder: (context, state) => Servicepage(),
      ),
      GoRoute(
        path: Routes.contact,
        builder: (context, state) => Contactpage(),
      ),
      GoRoute(
        path: Routes.gallery,
        builder: (context, state) => Gallerypage(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('No route defined for ${state.uri.toString()}'),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ServiceBloc>(
          create: (context) => ServiceBloc(ServiceRepository())..add(FetchServicesEvent()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Easy Grab',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          fontFamily: 'Poppins',
        ),
        routerConfig: _router,
      ),
    );
  }
}

class Routes {
  static const String home = '/';
  static const String aboutUs = '/about-us';
  static const String b2b = '/b2b';
  static const String jobs = '/jobs';
  static const String service = '/service';
  static const String investment = '/investment';
  static const String contact = '/contact';
  static const String blog = '/blog';
  static const String gallery = '/gallery';
}