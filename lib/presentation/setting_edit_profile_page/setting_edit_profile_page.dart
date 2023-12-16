import 'package:fatima995246_s_application1/core/app_export.dart';
import 'package:fatima995246_s_application1/widgets/custom_button.dart';
import 'package:fatima995246_s_application1/widgets/custom_drop_down.dart';
import 'package:fatima995246_s_application1/widgets/custom_icon_button.dart';
import 'package:fatima995246_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SettingEditProfilePage extends StatefulWidget {
  @override
  _SettingEditProfilePageState createState() => _SettingEditProfilePageState();
}

class _SettingEditProfilePageState extends State<SettingEditProfilePage>
    with AutomaticKeepAliveClientMixin<SettingEditProfilePage> {
  TextEditingController languageController = TextEditingController();

  TextEditingController languageOneController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController group572Controller = TextEditingController();

  TextEditingController group572OneController = TextEditingController();

  TextEditingController group572TwoController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController group572ThreeController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 25,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            170,
                          ),
                          width: getHorizontalSize(
                            174,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse28170x170,
                                height: getSize(
                                  170,
                                ),
                                width: getSize(
                                  170,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    85,
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomIconButton(
                                height: 38,
                                width: 38,
                                margin: getMargin(
                                  bottom: 20,
                                ),
                                variant: IconButtonVariant.FillIndigo600,
                                shape: IconButtonShape.RoundedBorder17,
                                padding: IconButtonPadding.PaddingAll9,
                                alignment: Alignment.bottomRight,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgTicket18x18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: Text(
                          "Your Name",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: languageController,
                        hintText: "Charlene Reed ",
                        margin: getMargin(
                          top: 8,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "User Name",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: languageOneController,
                        hintText: "Charlene Reed ",
                        margin: getMargin(
                          top: 8,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "Email",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: emailOneController,
                        hintText: "user@gmail.com ",
                        margin: getMargin(
                          top: 8,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "Password",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: passwordOneController,
                        hintText: "**********",
                        margin: getMargin(
                          top: 8,
                        ),
                        textInputType: TextInputType.visiblePassword,
                        isObscureText: true,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "Date of Birth",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      CustomDropDown(
                        focusNode: FocusNode(),
                        icon: Container(
                          margin: getMargin(
                            left: 30,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorConstant.blueGray400,
                              width: getHorizontalSize(
                                1,
                              ),
                              strokeAlign: strokeAlignCenter,
                            ),
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdown,
                          ),
                        ),
                        hintText: "25 January 1990",
                        margin: getMargin(
                          top: 8,
                        ),
                        items: dropdownItemList,
                        onChanged: (value) {},
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "Present Address",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: group572Controller,
                        hintText: "San Jose, California, USA",
                        margin: getMargin(
                          top: 8,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "Permanent Address",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: group572OneController,
                        hintText: "San Jose, California, USA",
                        margin: getMargin(
                          top: 8,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 17,
                        ),
                        child: Text(
                          "City",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: group572TwoController,
                        hintText: "San Jose",
                        margin: getMargin(
                          top: 7,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "Postal Code",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: zipcodeController,
                        hintText: "45962",
                        margin: getMargin(
                          top: 8,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 17,
                        ),
                        child: Text(
                          "Country",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: group572ThreeController,
                        hintText: "USA",
                        margin: getMargin(
                          top: 7,
                        ),
                        textInputAction: TextInputAction.done,
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        text: "Save",
                        margin: getMargin(
                          top: 20,
                        ),
                        shape: ButtonShape.RoundedBorder7,
                        padding: ButtonPadding.PaddingAll11,
                        fontStyle: ButtonFontStyle.InterMedium15WhiteA700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
