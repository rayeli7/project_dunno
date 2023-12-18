import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:dunno/core/app_export.dart';
import 'package:dunno/widgets/app_bar/appbar_image.dart';
import 'package:dunno/widgets/app_bar/appbar_title.dart';
import 'package:dunno/widgets/app_bar/custom_app_bar.dart';
import 'package:dunno/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: appTheme.gray100,
      appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(68),
          leading: AppbarImage(
              imagePath: ImageConstant.imgAppLogo,
              margin: getMargin(left: 24, top: 6, bottom: 6)),
          centerTitle: true,
          title: AppbarTitle(text: "lbl_profile".tr)),
      body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 23, top: 31, right: 23, bottom: 31),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse107,
                height: getSize(139),
                width: getSize(139),
                radius: BorderRadius.circular(getHorizontalSize(69))),
            Padding(
                padding: getPadding(top: 2),
                child: BlocSelector<ProfileBloc, ProfileState, String?>(
                    selector: (state) => state.profileModelObj!.suzanejobsTxt,
                    builder: (context, suzanejobsTxt) {
                      return Text(suzanejobsTxt ?? "",
                          style: theme.textTheme.displayMedium);
                    })),
            Padding(
                padding: getPadding(top: 8),
                child: BlocSelector<ProfileBloc, ProfileState, String?>(
                    selector: (state) => state.profileModelObj!.emailTxt,
                    builder: (context, emailTxt) {
                      return Text(emailTxt ?? "",
                          style: theme.textTheme.bodyMedium);
                    })),
            Padding(
                padding: getPadding(left: 4, top: 32, right: 4),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgSettings,
                          height: getSize(20),
                          width: getSize(20),
                          margin: getMargin(top: 5)),
                      Padding(
                          padding: getPadding(left: 16),
                          child: Text("lbl_password".tr,
                              style: CustomTextStyles.titleLargeSemiBold)),
                      const Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getVerticalSize(14),
                          width: getHorizontalSize(8),
                          margin: getMargin(top: 8, bottom: 3))
                    ])),
            Padding(
                padding: getPadding(left: 4, top: 32),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgFingerprint,
                          height: getVerticalSize(17),
                          width: getHorizontalSize(20),
                          margin: getMargin(top: 7, bottom: 3)),
                      Padding(
                          padding: getPadding(left: 16),
                          child: Text("lbl_touch_id".tr,
                              style: CustomTextStyles.titleLargeSemiBold)),
                      const Spacer(),
                      BlocSelector<ProfileBloc, ProfileState, bool?>(
                          selector: (state) => state.isSelectedSwitch,
                          builder: (context, isSelectedSwitch) {
                            return CustomSwitch(
                                margin: getMargin(top: 3),
                                value: isSelectedSwitch,
                                onChange: (value) {
                                  context
                                      .read<ProfileBloc>()
                                      .add(ChangeSwitchEvent(value: value));
                                });
                          })
                    ])),
            Padding(
                padding: getPadding(left: 4, top: 33, right: 2),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgCut,
                      height: getSize(20),
                      width: getSize(20),
                      margin: getMargin(top: 2, bottom: 3)),
                  Padding(
                      padding: getPadding(left: 16),
                      child: Text("lbl_languages".tr,
                          style: CustomTextStyles.titleLargeSemiBold)),
                  const Spacer(),
                  CustomImageView(
                      svgPath: ImageConstant.imgArrowright,
                      height: getVerticalSize(14),
                      width: getHorizontalSize(8),
                      margin: getMargin(top: 5, bottom: 6))
                ])),
            Padding(
                padding: getPadding(left: 4, top: 29, right: 4),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgInfo,
                      height: getSize(20),
                      width: getSize(20),
                      margin: getMargin(top: 3, bottom: 2)),
                  Padding(
                      padding: getPadding(left: 16),
                      child: Text("lbl_app_information".tr,
                          style: CustomTextStyles.titleLargeSemiBold)),
                  const Spacer(),
                  CustomImageView(
                      svgPath: ImageConstant.imgArrowright,
                      height: getVerticalSize(14),
                      width: getHorizontalSize(8),
                      margin: getMargin(top: 6, bottom: 5))
                ])),
            Padding(
                padding: getPadding(left: 4, top: 30, right: 4, bottom: 5),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgMusic,
                      height: getVerticalSize(19),
                      width: getHorizontalSize(20),
                      margin: getMargin(top: 3, bottom: 3)),
                  Padding(
                      padding: getPadding(left: 16),
                      child: Text("lbl_support".tr,
                          style: CustomTextStyles.titleLargeSemiBold)),
                  const Spacer(),
                  Padding(
                      padding: getPadding(top: 3, bottom: 3),
                      child: Text("lbl_5156446981".tr,
                          style: CustomTextStyles.bodySmallBluegray700_1))
                ]))
          ])),
    ));
  }
}
