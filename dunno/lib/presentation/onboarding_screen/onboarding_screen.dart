import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:dunno/core/app_export.dart';
import 'package:dunno/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
        create: (context) => OnboardingBloc(
            OnboardingState(onboardingModelObj: OnboardingModel()))
          ..add(OnboardingInitialEvent()),
        child: const OnboardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray100,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 36, top: 110, right: 36),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgAppLogo,
                            height: getSize(180),
                            width: getSize(180)),
                        CustomElevatedButton(
                            text: "lbl_start_now".tr.toUpperCase(),
                            margin: getMargin(top: 27, bottom: 5),
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOnPrimary,
                            onTap: () {
                              onTapStartnow(context);
                            })
                      ]))));
    });
  }

  /// Navigates to the logInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the logInScreen.
  onTapStartnow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
