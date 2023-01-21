import 'package:flutter/material.dart';
import 'package:mypcot_assignment/constants/const.dart';

class SecondStackContainer extends StatelessWidget {
  const SecondStackContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 260,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffDCB223),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 25,
                        top: 35,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Color.fromARGB(255, 253, 247, 249),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        top: 167,
                        child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            color: const Color(0xff234DDC),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'Subscriptions',
                              style: normalText,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 200,
                        top: 70,
                        child: Container(
                          height: 65,
                          width: 115,
                          decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, left: 8),
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: const TextSpan(
                                text: '10 ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: kBlackColor),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Active   ',
                                    style: TextStyle(
                                      color: selectedColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Subscriptions',
                                    style: TextStyle(
                                      color: selectedColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 215,
                        top: 143,
                        child: Container(
                          height: 60,
                          width: 123,
                          decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 9, left: 8),
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: const TextSpan(
                                text: '119 ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: kBlackColor),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Pending ',
                                    style: TextStyle(
                                      color: selectedColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Deliviries',
                                    style: TextStyle(
                                      color: selectedColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 19,
                  top: 35,
                  child: Image.asset(
                      'assets/images/subscriptions-illustration-image.png'),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 170,
          child: Stack(
            children: [
              Container(
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color(0xff234DDC),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: '03 ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'deliveries',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          left: 191,
          top: 50,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Color(0xff234DDC),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/download (1).jpeg'),
            ),
          ),
        ),
        const Positioned(
          left: 224,
          top: 50,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Color(0xff234DDC),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/download (2).jpeg'),
            ),
          ),
        ),
        const Positioned(
          left: 254,
          top: 50,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Color(0xff234DDC),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/download (3).jpeg'),
            ),
          ),
        ),
      ],
    );
  }
}
