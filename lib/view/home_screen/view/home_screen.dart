import 'package:flutter/material.dart';
import 'package:mypcot_assignment/constants/const.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              WelcomeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: const [
            Text(
              'Welcome, Mypcot !!',
              style: title,
            ),
            Text(
              'here is your dashboard....',
              style: subtitle,
            ),
          ],
        ),
        Row(
          children: const [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/Group 922.png'),
            ),
          ],
        ),
      ],
    );
  }
}
