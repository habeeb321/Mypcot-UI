import 'package:flutter/material.dart';
import 'package:mypcot_assignment/view/home_screen/widgets/first_stack_container.dart';
import 'package:mypcot_assignment/view/home_screen/widgets/second_stack_container.dart';
import 'package:mypcot_assignment/view/home_screen/widgets/third_stack_container.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: double.infinity,
      child: GridView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3.9 / 6,
        ),
        children: const [
          FirstStackContainer(),
          SecondStackContainer(),
          ThirdStackContainer(),
        ],
      ),
    );
  }
}
