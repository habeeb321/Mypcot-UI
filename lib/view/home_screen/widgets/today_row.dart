import 'package:flutter/material.dart';
import 'package:mypcot_assignment/constants/const.dart';

class TodayRow extends StatelessWidget {
  const TodayRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'January, 23 2021',
              style: TextStyle(fontSize: 12, color: selectedColor),
            ),
            Text(
              'Today',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: selectedColor),
            )
          ],
        ),
        Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
            ),
          ], color: kWhiteColor, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Row(
              children: [
                const Text(
                  'TIMELINE',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: selectedColor,
                      fontSize: 13),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
            ),
          ], color: kWhiteColor, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.today_outlined, color: selectedColor),
              ),
              const Text(
                'JAN, 2021',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: selectedColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
