import 'package:flutter/material.dart';
import 'package:mypcot_assignment/constants/const.dart';

class NewOrderContainer extends StatelessWidget {
  const NewOrderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('New order created', style: title),
              Text('New Order created with Order'),
              Text(
                '09:00 AM',
                style: TextStyle(fontSize: 13, color: Color(0xffFE804E)),
              ),
              Icon(
                Icons.arrow_right_alt,
                color: Color(0xffFE804E),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 32,
            backgroundColor: Color(0xffFE804E),
            child: Image(
              image: AssetImage('assets/images/Group 900.png'),
            ),
          ),
        ],
      ),
    );
  }
}
