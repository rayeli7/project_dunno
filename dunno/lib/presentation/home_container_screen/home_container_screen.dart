import 'bloc/home_container_bloc.dart';
import 'models/home_container_model.dart';
import 'package:dunno/core/app_export.dart';
import 'package:dunno/presentation/activity_screen/activity_screen.dart';
import 'package:dunno/presentation/home_page/home_page.dart';
import 'package:dunno/presentation/profile_screen/profile_screen.dart';
import 'package:dunno/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({super.key});

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    // var arg =
    //   ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return BlocProvider<HomeContainerBloc>(
        create: (context) => HomeContainerBloc(HomeContainerState(
            homeContainerModelObj: HomeContainerModel(),
            id: [NavigationArgs.id]))
          ..add(HomeContainerInitialEvent()),
        child: HomeContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<HomeContainerBloc, HomeContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.black900,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: const Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Activity:
        return AppRoutes.activityScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.activityScreen:
        return ActivityScreen.builder(context);
      case AppRoutes.profileScreen:
        return ProfileScreen.builder(context);
      default:
        return const DefaultWidget();
    }
  }
}
