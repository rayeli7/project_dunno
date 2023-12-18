import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:dunno/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: const SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.black900,
              body: SizedBox(
                  width: double.maxFinite,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSplash,
                      fit: BoxFit.contain,
                      alignment: Alignment.center))));
    });
  }
}
