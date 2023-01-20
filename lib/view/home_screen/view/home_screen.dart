import 'package:flutter/material.dart';
import 'package:mypcot_assignment/constants/const.dart';
import 'package:mypcot_assignment/view/home_screen/widgets/first_stack_container.dart';
import 'package:mypcot_assignment/view/home_screen/widgets/today_row.dart';
import 'package:mypcot_assignment/view/home_screen/widgets/welcome_title_ui.dart';

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
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/­ƒôìTrailing icon 1.png'),
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
          child: ListView(
            children: const [
              WelcomeTitle(),
              kHeight40,
              FirstStackContainer(),
              kHeight30,
              TodayRow(),
            ],
          ),
        ),
      ),
    );
  }
}
