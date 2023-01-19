import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mypcot_assignment/constants/const.dart';
import 'package:mypcot_assignment/controller/bottom_nav_controller.dart';
import 'package:mypcot_assignment/view/customers_screen/customers_screen.dart';
import 'package:mypcot_assignment/view/home_screen/view/home_screen.dart';
import 'package:mypcot_assignment/view/khata_screen/khata_screen.dart';
import 'package:mypcot_assignment/view/order_screen/order_screen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController bottomNavController = Get.put(BottomNavController());

    List pages = [
      const HomeScreen(),
      const CustomersScreen(),
      const KhataScreen(),
      const OrderScreen(),
    ];

    return Scaffold(
      body: GetBuilder<BottomNavController>(
        builder: (controller) {
          return pages[bottomNavController.currentIndex];
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: selectedColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GetBuilder<BottomNavController>(builder: (context) {
        return BottomAppBar(
          elevation: 20,
          notchMargin: 8.0,
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: SvgPicture.asset('assets/icons/Group 910.svg'),
                  onPressed: () {
                    bottomNavController.setBottomBarIndex(0);
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset('assets/icons/Group 912.svg'),
                  onPressed: () {
                    bottomNavController.setBottomBarIndex(1);
                  },
                ),
                const SizedBox.shrink(),
                IconButton(
                  icon: SvgPicture.asset('assets/icons/Group 913.svg'),
                  onPressed: () {
                    bottomNavController.setBottomBarIndex(2);
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset('assets/icons/Group 914.svg'),
                  onPressed: () {
                    bottomNavController.setBottomBarIndex(3);
                  },
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
