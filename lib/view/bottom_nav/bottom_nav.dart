import 'package:flutter/material.dart';
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
      bottomNavigationBar: GetBuilder<BottomNavController>(
        builder: (context) {
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        kHeight10,
                        InkWell(
                          onTap: () {
                            bottomNavController.setBottomBarIndex(0);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: const Image(
                              image: AssetImage(home),
                            ),
                          ),
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        kHeight10,
                        InkWell(
                          onTap: () {
                            bottomNavController.setBottomBarIndex(1);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: const Image(
                              image: AssetImage(customers),
                            ),
                          ),
                        ),
                        const Text(
                          'Customers',
                          style: bottomStyle,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox.shrink(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        kHeight10,
                        InkWell(
                          onTap: () {
                            bottomNavController.setBottomBarIndex(2);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: const Image(
                              image: AssetImage(khata),
                            ),
                          ),
                        ),
                        const Text('Khata', style: bottomStyle),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        kHeight10,
                        InkWell(
                          onTap: () {
                            bottomNavController.setBottomBarIndex(3);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: const Image(
                              image: AssetImage(orders),
                            ),
                          ),
                        ),
                        const Text('Orders', style: bottomStyle),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
