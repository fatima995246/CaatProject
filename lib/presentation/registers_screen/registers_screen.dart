import 'package:fatima995246_s_application1/core/app_export.dart';
import 'package:fatima995246_s_application1/widgets/custom_button.dart';
import 'package:fatima995246_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RegistersScreen extends StatefulWidget {
  @override
  State<RegistersScreen> createState() => _RegistersScreenState();
}

class _RegistersScreenState extends State<RegistersScreen> {
  TextEditingController fNameController = TextEditingController();

  TextEditingController lNameController = TextEditingController();

  TextEditingController emailidController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController PhoneController= TextEditingController();

  var formKey = GlobalKey<FormState>();

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
                            child: Text("Create a New Account",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold28)),
                        Padding(
                            padding: getPadding(top: 17),
                            child: Text("It’s fast and easy",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium14)),
                        Padding(
                            padding: getPadding(top: 22, right: 1),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: fNameController,
                                          hintText: "Name",
                                          margin: getMargin(right: 8),
                                          variant: TextFormFieldVariant
                                              .FillIndigo60014,
                                          shape: TextFormFieldShape
                                              .RoundedBorder15,
                                          padding:
                                              TextFormFieldPadding.PaddingAll15,
                                          fontStyle: TextFormFieldFontStyle
                                              .InterMedium16,
                                        validator: (text) {
                                          if (text == null || text.trim().isEmpty) {
                                            return 'please enter your name';
                                          }
                                          return null;
                                        },)),
                                  Expanded(
                                      child: CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: lNameController,
                                          hintText: "Company",
                                          margin: getMargin(left: 8),
                                          variant: TextFormFieldVariant
                                              .FillIndigo60014,
                                          shape: TextFormFieldShape
                                              .RoundedBorder15,
                                          padding:
                                              TextFormFieldPadding.PaddingAll15,
                                          fontStyle: TextFormFieldFontStyle
                                              .InterMedium16,
                                        validator: (text) {
                                          if (text == null || text.trim().isEmpty) {
                                            return 'please enter your Company name';
                                          }
                                          return null;
                                        },))
                                ])),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailidController,
                          hintText: "Email Id",
                          margin: getMargin(top: 16),
                          variant: TextFormFieldVariant.FillIndigo60014,
                          shape: TextFormFieldShape.RoundedBorder15,
                          padding: TextFormFieldPadding.PaddingAll15,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputType: TextInputType.emailAddress,
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return "please enter email address";
                            }
                            bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(text);
                            if (!emailValid) {
                              return "please enter valid email address";
                            }
                            return null;
                          },

                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: PhoneController,
                          hintText: "Phone",
                          margin: getMargin(top: 16),
                          variant: TextFormFieldVariant.FillIndigo60014,
                          shape: TextFormFieldShape.RoundedBorder15,
                          padding: TextFormFieldPadding.PaddingAll15,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputType: TextInputType.phone,
                          validator: (text) {

                          },

                        ),


                        CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: passwordController,
                            hintText: "Password",
                            margin: getMargin(top: 16),
                            variant: TextFormFieldVariant.FillIndigo60014,
                            shape: TextFormFieldShape.RoundedBorder15,
                            padding: TextFormFieldPadding.PaddingT14,
                            fontStyle: TextFormFieldFontStyle.InterMedium16,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return "please enter password";
                              }
                              if (text.length < 6) {
                                return "password should be at least 6 chars";
                              }
                              return null;
                            },
                            suffix: Container(
                                margin: getMargin(
                                    left: 30, top: 13, right: 20, bottom: 13),
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgCheckmarkBlueGray400)),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(50)),
                            isObscureText: true),
                        CustomButton(
                            height: getVerticalSize(50),
                            text: "Registers",
                            margin: getMargin(top: 40, bottom: 5),
                            shape: ButtonShape.CircleBorder25,
                            padding: ButtonPadding.PaddingAll14,
                            fontStyle: ButtonFontStyle.InterRegular18,
                            onTap: register)
                      ]),
                ))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  void register() {
    if (formKey.currentState?.validate() == true) {
      Navigator.of(context).pushNamed(AppRoutes.homeScreen);
    }
  }
}
