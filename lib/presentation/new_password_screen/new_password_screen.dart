import 'package:fatima995246_s_application1/core/app_export.dart';
import 'package:fatima995246_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class NewPasswordScreen extends StatelessWidget {
  TextEditingController newpasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 13, right: 16, bottom: 13),
                child: Form(
                  key: formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleftIndigo600,
                            height: getSize(24),
                            width: getSize(24),
                            margin: getMargin(left: 10),
                            onTap: () {
                              onTapImgArrowleft(context);
                            }),
                        Padding(
                            padding: getPadding(top: 82),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Create New ",
                                      style: TextStyle(
                                          color: ColorConstant.blueGray900,
                                          fontSize: getFontSize(28),
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700)),
                                  TextSpan(
                                      text: "Password",
                                      style: TextStyle(
                                          color: ColorConstant.blueGray900,
                                          fontSize: getFontSize(28),
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700))
                                ]),
                                textAlign: TextAlign.left)),
                        Padding(
                            padding: getPadding(top: 17),
                            child: Text("Create your new password to Login",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium14)),
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: newpasswordController,
                            hintText: "New Password",
                            margin: getMargin(top: 22),
                            variant: TextFormFieldVariant.FillIndigo60014,
                            shape: TextFormFieldShape.RoundedBorder15,
                            padding: TextFormFieldPadding.PaddingT14,
                            fontStyle: TextFormFieldFontStyle.InterMedium16,
                            textInputType: TextInputType.visiblePassword,
                            suffix: Container(
                                margin: getMargin(
                                    left: 30, top: 13, right: 20, bottom: 13),
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgCheckmarkBlueGray400)),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(50)),
                            isObscureText: true,
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'please enter password';
                            }
                            if (text.length < 6) {
                              return 'password should be at least 6 chars';
                            }
                            return null;
                          },),
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: confirmpasswordController,
                            hintText: "Confirm Password",
                            margin: getMargin(top: 16),
                            variant: TextFormFieldVariant.FillIndigo60014,
                            shape: TextFormFieldShape.RoundedBorder15,
                            padding: TextFormFieldPadding.PaddingT14,
                            fontStyle: TextFormFieldFontStyle.InterMedium16,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: Container(
                                margin: getMargin(
                                    left: 30, top: 13, right: 20, bottom: 13),
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgCheckmarkBlueGray400)),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(50)),
                            isObscureText: true,
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'please enter confermation password';
                            }
                            if (text != newpasswordController.text) {
                              return "password doesn't match";
                            }
                            return null;
                          },),
                        GestureDetector(

                            onTap: () {
                              onTapTxtResetpassword(context);
                            },
                            child: Container(
                                width: getHorizontalSize(343),
                                margin: getMargin(top: 40, bottom: 5),
                                padding: getPadding(
                                    left: 30, top: 13, right: 103, bottom: 13),
                                decoration: AppDecoration.txtFillIndigo600
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.txtCircleBorder25,color:Color(0xff3498DB),),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Reset",
                                          style: TextStyle(
                                              color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(18),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: " Password",
                                          style: TextStyle(
                                              color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(18),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400))
                                    ]),
                                    textAlign: TextAlign.center)
                            )
                        )
                      ]
                  ),
                )
            )
        )
    );
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtResetpassword(BuildContext context) {
    if (formKey.currentState?.validate() == true) {
      Navigator.pushNamed(context, AppRoutes.loginScreen);
    }

  }
}
