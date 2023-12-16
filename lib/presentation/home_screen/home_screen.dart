import '../home_screen/widgets/listbalance_item_widget.dart';
import '../home_screen/widgets/listvideocamera_item_widget.dart';
import '../side_menu_draweritem/side_menu_draweritem.dart';
import 'package:fatima995246_s_application1/core/app_export.dart';
import 'package:fatima995246_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:fatima995246_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:fatima995246_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:fatima995246_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:fatima995246_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:fatima995246_s_application1/widgets/custom_button.dart';
import 'package:fatima995246_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController group420Controller = TextEditingController();

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: ColorConstant.gray100,
            drawer: SideMenuDraweritem(),
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
                            text: "Overview",
                            margin: getMargin(left: 93, top: 3, bottom: 6)),
                        AppbarCircleimage(
                          onTap: (context){
                            onTabProfileEditScreen(context);
                          },
                            imagePath: ImageConstant.imgEllipse3735x35,
                            margin: getMargin(left: 82))
                      ]),
                      AppbarSearchview(
                          margin: getMargin(top: 20),
                          hintText: "Search for something",
                          controller: group420Controller)
                    ]),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: []
                        )
                    )
                )
            )
        )
    );
  }

  onTapMenu(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }
  onTabProfileEditScreen(BuildContext context) {
  Navigator.of(context).pushNamed(AppRoutes.settingEditProfilePage);
  }
}
