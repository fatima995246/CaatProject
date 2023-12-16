import 'package:fatima995246_s_application1/core/app_export.dart';
import 'package:fatima995246_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 119, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Lets Get Started",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold28),
                      Container(
                          width: getHorizontalSize(220),
                          margin: getMargin(top: 16),
                          child: Text(
                              "Find the right and what you want \nonly in AuditHub",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "Login",
                          margin: getMargin(top: 20),
                          variant: ButtonVariant.FillIndigo60014,
                          shape: ButtonShape.RoundedBorder15,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.InterMedium16,
                          onTap: () {
                            onTapLogin(context);
                          }),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "Register",
                          margin: getMargin(top: 16),
                          variant: ButtonVariant.FillIndigo60014,
                          shape: ButtonShape.RoundedBorder15,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.InterMedium16,
                          onTap: () {
                            onTapRegister(context);
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 25),
                              child: Text("Or Use Instant Sign Up",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold12))),
                      Container(
                          margin: getMargin(top: 24),
                          padding: getPadding(
                              left: 16, top: 9, right: 16, bottom: 9),
                          decoration: AppDecoration.outlineBluegray400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGoogleBlueA200,
                                height: getSize(32),
                                width: getSize(32)),
                            Padding(
                                padding:
                                    getPadding(left: 55, top: 6, bottom: 5),
                                child: Text("Sign With Google",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16))
                          ])),
                      Container(
                          margin: getMargin(top: 24, bottom: 5),
                          padding: getPadding(
                              left: 16, top: 9, right: 16, bottom: 9),
                          decoration: AppDecoration.outlineBluegray400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgUserBlueGray90001,
                                height: getSize(32),
                                width: getSize(32)),
                            Padding(
                                padding:
                                    getPadding(left: 60, top: 6, bottom: 5),
                                child: Text("Sign With Apple",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16))
                          ]))
                    ]))));
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registersScreen);
  }
}
