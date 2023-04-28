import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yatri/controller/index_controller.dart';




class HomeNavBar extends StatefulWidget {
  const HomeNavBar({Key? key}) : super(key: key);

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  var indexController = Get.put(IndexController());


  @override
  Widget build(BuildContext context) {
    return  GetBuilder<IndexController>(
      builder: (indexController) {
        return CustomNavigationBar(
            iconSize: 30.0,
            selectedColor: Color(0xff040307),
            strokeColor: Color(0x30040307),
            unSelectedColor: Color(0xffacacac),
            backgroundColor: Colors.white,
            items: [
              CustomNavigationBarItem(
                icon: const Icon(Icons.home),
                title: const Text(
                  "Home",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.alarm_on_sharp,),
                title: const Text(
                  "Reminder",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.calendar_month),
                title: const Text(
                  "Calendar",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.person_2),
                title: const Text(
                  "Profile",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
            currentIndex: indexController.currentIndex,
            onTap: (index) {
              indexController.changeIndex(index);
            },

        );
      }
    );
  }
}
