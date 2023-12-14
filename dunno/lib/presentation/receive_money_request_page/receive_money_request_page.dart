import 'bloc/receive_money_request_bloc.dart';
import 'models/receive_money_request_model.dart';
import 'package:dunno/core/app_export.dart';
import 'package:dunno/core/utils/validation_functions.dart';
import 'package:dunno/widgets/custom_elevated_button.dart';
import 'package:dunno/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ReceiveMoneyRequestPage extends StatefulWidget {
  const ReceiveMoneyRequestPage({Key? key}) : super(key: key);

  @override
  ReceiveMoneyRequestPageState createState() => ReceiveMoneyRequestPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ReceiveMoneyRequestBloc>(
        create: (context) => ReceiveMoneyRequestBloc(ReceiveMoneyRequestState(
            receiveMoneyRequestModelObj: ReceiveMoneyRequestModel()))
          ..add(ReceiveMoneyRequestInitialEvent()),
        child: ReceiveMoneyRequestPage());
  }
}

// ignore_for_file: must_be_immutable
class ReceiveMoneyRequestPageState extends State<ReceiveMoneyRequestPage>
    with AutomaticKeepAliveClientMixin<ReceiveMoneyRequestPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 27, top: 25, right: 27),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Padding(
                                              padding: getPadding(right: 12),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_first_name".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge),
                                                    BlocSelector<
                                                            ReceiveMoneyRequestBloc,
                                                            ReceiveMoneyRequestState,
                                                            TextEditingController?>(
                                                        selector: (state) => state
                                                            .firstNameController,
                                                        builder: (context,
                                                            firstNameController) {
                                                          return CustomTextFormField(
                                                              width:
                                                                  getHorizontalSize(
                                                                      168),
                                                              controller:
                                                                  firstNameController,
                                                              margin: getMargin(
                                                                  top: 5),
                                                              hintText:
                                                                  "lbl_name".tr,
                                                              hintStyle:
                                                                  CustomTextStyles
                                                                      .bodyLargePrimaryContainer,
                                                              validator:
                                                                  (value) {
                                                                if (!isText(
                                                                    value)) {
                                                                  return "Please enter valid text";
                                                                }
                                                                return null;
                                                              });
                                                        })
                                                  ]))),
                                      Expanded(
                                          child: Padding(
                                              padding: getPadding(left: 12),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_last_name".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge),
                                                    BlocSelector<
                                                            ReceiveMoneyRequestBloc,
                                                            ReceiveMoneyRequestState,
                                                            TextEditingController?>(
                                                        selector: (state) => state
                                                            .lastNameController,
                                                        builder: (context,
                                                            lastNameController) {
                                                          return CustomTextFormField(
                                                              width:
                                                                  getHorizontalSize(
                                                                      168),
                                                              controller:
                                                                  lastNameController,
                                                              margin: getMargin(
                                                                  top: 5),
                                                              hintText:
                                                                  "lbl_name".tr,
                                                              hintStyle:
                                                                  CustomTextStyles
                                                                      .bodyLargePrimaryContainer,
                                                              validator:
                                                                  (value) {
                                                                if (!isText(
                                                                    value)) {
                                                                  return "Please enter valid text";
                                                                }
                                                                return null;
                                                              });
                                                        })
                                                  ])))
                                    ]),
                                Padding(
                                    padding: getPadding(top: 26),
                                    child: Text("lbl_email".tr,
                                        style: theme.textTheme.bodyLarge)),
                                BlocSelector<
                                        ReceiveMoneyRequestBloc,
                                        ReceiveMoneyRequestState,
                                        TextEditingController?>(
                                    selector: (state) => state.emailController,
                                    builder: (context, emailController) {
                                      return CustomTextFormField(
                                          controller: emailController,
                                          margin: getMargin(top: 5),
                                          hintText: "lbl_your_email_here".tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargePrimaryContainer,
                                          textInputType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidEmail(value,
                                                    isRequired: true))) {
                                              return "Please enter valid email";
                                            }
                                            return null;
                                          });
                                    }),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("lbl_company_name".tr,
                                        style: theme.textTheme.bodyLarge)),
                                BlocSelector<
                                        ReceiveMoneyRequestBloc,
                                        ReceiveMoneyRequestState,
                                        TextEditingController?>(
                                    selector: (state) => state.nameController,
                                    builder: (context, nameController) {
                                      return CustomTextFormField(
                                          controller: nameController,
                                          margin: getMargin(top: 7),
                                          hintText: "msg_company_name_here".tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargePrimaryContainer,
                                          validator: (value) {
                                            if (!isText(value)) {
                                              return "Please enter valid text";
                                            }
                                            return null;
                                          });
                                    }),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("lbl_country".tr,
                                        style: theme.textTheme.bodyLarge)),
                                BlocSelector<
                                        ReceiveMoneyRequestBloc,
                                        ReceiveMoneyRequestState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.countryController,
                                    builder: (context, countryController) {
                                      return CustomTextFormField(
                                          controller: countryController,
                                          margin: getMargin(top: 3),
                                          hintText: "lbl_select_country".tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargePrimaryContainer);
                                    }),
                                Padding(
                                    padding: getPadding(top: 25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Padding(
                                                  padding:
                                                      getPadding(right: 12),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_ammount".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge),
                                                        BlocSelector<
                                                                ReceiveMoneyRequestBloc,
                                                                ReceiveMoneyRequestState,
                                                                TextEditingController?>(
                                                            selector: (state) =>
                                                                state
                                                                    .priceController,
                                                            builder: (context,
                                                                priceController) {
                                                              return CustomTextFormField(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          168),
                                                                  controller:
                                                                      priceController,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              5),
                                                                  hintText:
                                                                      "lbl_0_00"
                                                                          .tr,
                                                                  hintStyle:
                                                                      CustomTextStyles
                                                                          .bodyLargePrimaryContainer);
                                                            })
                                                      ]))),
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(left: 12),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_currency".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge),
                                                        BlocSelector<
                                                                ReceiveMoneyRequestBloc,
                                                                ReceiveMoneyRequestState,
                                                                TextEditingController?>(
                                                            selector: (state) =>
                                                                state
                                                                    .priceController1,
                                                            builder: (context,
                                                                priceController1) {
                                                              return CustomTextFormField(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          168),
                                                                  controller:
                                                                      priceController1,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              3),
                                                                  hintText:
                                                                      "lbl_usd"
                                                                          .tr,
                                                                  hintStyle:
                                                                      CustomTextStyles
                                                                          .bodyLargePrimaryContainer);
                                                            })
                                                      ])))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("lbl_massage".tr,
                                        style: theme.textTheme.bodyLarge)),
                                BlocSelector<
                                        ReceiveMoneyRequestBloc,
                                        ReceiveMoneyRequestState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.writeashortController,
                                    builder: (context, writeashortController) {
                                      return CustomTextFormField(
                                          controller: writeashortController,
                                          margin: getMargin(top: 3),
                                          hintText: "msg_write_a_short_note".tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargePrimaryContainer,
                                          textInputAction:
                                              TextInputAction.done);
                                    }),
                                Container(
                                    margin: getMargin(top: 30),
                                    padding: getPadding(
                                        left: 83,
                                        top: 37,
                                        right: 83,
                                        bottom: 37),
                                    decoration:
                                        AppDecoration.outlinePrimaryContainer,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("msg_attach_file_optional".tr,
                                              style: CustomTextStyles
                                                  .titleLargePrimaryContainer),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgFilePrimarycontainer,
                                              height: getVerticalSize(26),
                                              width: getHorizontalSize(20),
                                              margin:
                                                  getMargin(top: 7, bottom: 2))
                                        ])),
                                Opacity(
                                    opacity: 0.4,
                                    child: CustomElevatedButton(
                                        text: "lbl_send2".tr.toUpperCase(),
                                        margin: getMargin(top: 42),
                                        buttonStyle:
                                            CustomButtonStyles.fillGray,
                                        onTap: () {
                                          onTapSend(context);
                                        }))
                              ]))
                    ])))));
  }

  /// Navigates to the requestSentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the requestSentScreen.
  onTapSend(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.requestSentScreen,
    );
  }
}
