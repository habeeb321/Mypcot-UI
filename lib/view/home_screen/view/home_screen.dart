import 'package:flutter/material.dart';
import 'package:mypcot_assignment/constants/const.dart';
import 'package:mypcot_assignment/view/home_screen/widgets/calendar_list_view.dart';
import 'package:mypcot_assignment/view/home_screen/widgets/stack_container.dart';
import 'package:mypcot_assignment/view/home_screen/widgets/new_order_container.dart';
import 'package:mypcot_assignment/view/home_screen/widgets/today_row.dart';
import 'package:mypcot_assignment/view/home_screen/widgets/welcome_title_ui.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
              'assets/images/­ƒôì Leading Icon l Use High Emphasis.png'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/Group 921.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: badges.Badge(
              badgeContent: const Text(
                '2',
                style: TextStyle(color: kWhiteColor),
              ),
              child: Icon(
                Icons.notifications,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/actions.png',
            ),
          ),
        ],
      ),
      body: Padding(
        padding: kMainPadding,
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: const [
                WelcomeTitle(),
                kHeight40,
                StackContainer(),
                kHeight30,
                TodayRow(),
                kHeight30,
                CalendarListView(),
                kHeight10,
                NewOrderContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
