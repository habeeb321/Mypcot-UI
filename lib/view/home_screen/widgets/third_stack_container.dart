import 'package:flutter/material.dart';
import 'package:mypcot_assignment/constants/const.dart';

class ThirdStackContainer extends StatelessWidget {
  const ThirdStackContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 260,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff31CE95),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 19,
                        top: 25,
                        child: CircleAvatar(
                          radius: 59,
                          backgroundColor: Color.fromARGB(255, 253, 247, 249),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        top: 165,
                        child: Container(
                          height: 35,
                          width: 125,
                          decoration: BoxDecoration(
                            color: const Color(0xffCE316A),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'View Customers',
                              style: normalText,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 233,
                        top: 75,
                        child: Container(
                          height: 67,
                          width: 115,
                          decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 12, left: 8),
                            child: Text(
                              '1.8%',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 175,
                        top: 150,
                        child: Container(
                          height: 60,
                          width: 115,
                          decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 9, left: 8),
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
                                    text: 'Active ',
                                    style: TextStyle(
                                      color: selectedColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Customers',
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
              ),
              Positioned(
                left: 19,
                top: 35,
                child: Image.asset(
                    'assets/images/customers-illustration-image.png'),
              ),
              const Positioned(
                left: 265,
                top: 175,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color.fromARGB(255, 75, 224, 214),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage:
                        AssetImage('assets/images/download (1).jpeg'),
                  ),
                ),
              ),
              const Positioned(
                left: 288,
                top: 175,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color.fromARGB(255, 75, 224, 214),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage:
                        AssetImage('assets/images/download (3).jpeg'),
                  ),
                ),
              ),
              const Positioned(
                left: 308,
                top: 175,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color.fromARGB(255, 75, 224, 214),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage:
                        AssetImage('assets/images/download (2).jpeg'),
                  ),
                ),
              ),
              Positioned(
                left: 308,
                top: 93,
                child: Image.asset('assets/images/arrow up.png'),
              ),
              Positioned(
                left: 241,
                top: 121,
                child: Image.asset('assets/images/graph.png'),
              ),
            ],
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
                    color: const Color(0xffCE316A),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: '15 ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'New customers',
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
            backgroundColor: Color.fromARGB(255, 75, 224, 214),
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
            backgroundColor: Color.fromARGB(255, 75, 224, 214),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/download (3).jpeg'),
            ),
          ),
        ),
        const Positioned(
          left: 254,
          top: 50,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Color.fromARGB(255, 75, 224, 214),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/download (2).jpeg'),
            ),
          ),
        ),
        const Positioned(
          left: 289,
          top: 65,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: kWhiteColor,
            child: Icon(
              Icons.add,
              size: 15,
            ),
          ),
        ),
      ],
    );
  }
}
