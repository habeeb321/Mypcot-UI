import 'package:flutter/material.dart';
import 'package:mypcot_assignment/constants/const.dart';

class CalendarListView extends StatelessWidget {
  const CalendarListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ListView.separated(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: kBlackColor,
            ),
          );
        },
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return kWidth10;
        },
      ),
    );
  }
}
