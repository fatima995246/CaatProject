import 'package:fatima995246_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SideMenuDraweritem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: getHorizontalSize(250),
            padding: getPadding(left: 40, top: 30, right: 40, bottom: 30),
            decoration: AppDecoration.outlineGray300,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 4, right: 4),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.ImgLogo,
                            height: getSize(40),
                            width: getSize(40)),
                        Padding(
                            padding: getPadding(left: 4, top: 4, bottom: 4),
                            child: Text("AuditHub",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold25
                                    .copyWith(color: ColorConstant.newblue)))
                      ])),
                  GestureDetector(
                      onTap: () {
                        onTapRowhome(context);
                      },
                      child: Padding(
                          padding: getPadding(top: 67, right: 31),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgHome,
                                height: getSize(25),
                                width: getSize(25)),
                            Padding(
                                padding: getPadding(left: 20, top: 2),
                                child: Text("Dashboard",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium18.copyWith(
                                        color: ColorConstant.newblue)))
                          ]))),
                  GestureDetector(
                    onTap: () {
                      onTapTodo(context);
                    },
                    child: Padding(
                        padding: getPadding(top: 33, bottom: 108),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgTODO,
                              height: getSize(25),
                              width: getSize(25),
                              margin: getMargin(bottom: 1)),
                          Padding(
                              padding: getPadding(left: 20, top: 4),
                              child: Text("To Do",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium18
                                      .copyWith(color: ColorConstant.newblue)))
                        ])),
                  ),
            GestureDetector(
                    onTap: () {
                      onTapSetting(context);
                    },
                    child: Padding(
                        padding: getPadding(top: 16, bottom: 108),
                        child: Row(children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgSettings,
                              height: getSize(25),
                              width: getSize(25),
                              margin: getMargin(bottom: 1)),
                          Padding(
                              padding: getPadding(left: 20, top: 6),
                              child: Text("Setting",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium18
                                      .copyWith(color: ColorConstant.newblue)))
                        ])),
            )
                ])));
  }

  onTapRowhome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  onTapTodo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.toDoTab);
  }

  onTapSetting(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settings);
  }
}
