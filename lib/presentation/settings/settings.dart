import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../side_menu_draweritem/side_menu_draweritem.dart';

class SettingsTab extends StatelessWidget{

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: ColorConstant.gray100,
          drawer: SideMenuDraweritem(),
          resizeToAvoidBottomInset: false,
          appBar: CustomAppBar(

              height: getVerticalSize(122),
              centerTitle: true,
              title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(children: [
                      AppbarImage(
                          height: getSize(24),
                          width: getSize(24),
                          svgPath: ImageConstant.imgMenu,
                          margin: getMargin(top: 5, bottom: 6,left: 5),
                          onTap: () {
                            onTapMenu(context);
                          }),
                      AppbarTitle(
                          text: " Settings",
                          margin: getMargin(left: 93, top: 3, bottom: 6)),
                    ]),
                  ]),
              styleType: Style.bgFillWhiteA700),));
  }

  onTapMenu(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }

}