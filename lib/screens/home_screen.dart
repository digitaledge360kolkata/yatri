import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yatri/constants/colors.dart';

import 'package:yatri/controller/index_controller.dart';

import 'package:yatri/screens/home_screens/calendar_screen.dart';
import 'package:yatri/screens/home_screens/home_page.dart';
import 'package:yatri/screens/home_screens/profile_screen.dart';
import 'package:yatri/screens/home_screens/reminder_screen.dart';
import 'package:yatri/widgets/home_bottom_nav_bar.dart';

import '../widgets/home_drawer.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var indexController = Get.put(IndexController());


  final _advancedDrawerController = AdvancedDrawerController();
  var homePages = [HomePage(),ReminderScreen(), CalendarScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: kDarkPrimaryColor,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: HomeDrawer(),
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        bottomNavigationBar: HomeNavBar(),
        appBar: AppBar(
          title: const Text('Yattri'),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),
        body: GetBuilder<IndexController>(
          builder: (indexController){
            return homePages[indexController.currentIndex ];
          },
        ),
      ),
    );
  }
  
  
  
  
  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}


