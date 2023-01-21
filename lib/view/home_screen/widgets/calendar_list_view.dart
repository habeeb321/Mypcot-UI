import 'package:flutter/material.dart';
import 'package:mypcot_assignment/constants/const.dart';

class CalendarListView extends StatelessWidget {
  const CalendarListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> days = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUM'];
    return SizedBox(
      height: 50,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 50,
            width: 50,
            child: Column(
              children: [
                Text(
                  days[index],
                  style: const TextStyle(
                      color: Color.fromARGB(255, 199, 198, 198)),
                ),
                kHeight5,
                Text(
                  '${20 + index}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => kWidth5,
        itemCount: 7,
      ),
    );
  }
}
