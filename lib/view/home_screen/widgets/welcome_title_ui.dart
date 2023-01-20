import 'package:flutter/material.dart';
import 'package:mypcot_assignment/constants/const.dart';

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
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/Group 922.png'),
        ),
      ],
    );
  }
}
