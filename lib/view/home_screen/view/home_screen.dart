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
          child: ListView(
            children: [
              const WelcomeTitle(),
              kHeight40,
              SizedBox(
                height: 240,
                child: GridView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 4 / 6,
                  ),
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: containerColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 20,
                                top: 30,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage: AssetImage(
                                      'assets/images/orders-illustration-image.png'),
                                  backgroundColor:
                                      Color.fromARGB(255, 253, 247, 249),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                top: 180,
                                child: Container(
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 204, 59, 2),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Orders',
                                      style: normalText,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 200,
                                top: 110,
                                child: Container(
                                  height: 70,
                                  width: 115,
                                  decoration: BoxDecoration(
                                      color: kWhiteColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        text: '02 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: kBlackColor),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'pending Orders from',
                                            style: TextStyle(
                                                color: selectedColor,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 13),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 220,
                                top: 160,
                                child: CircleAvatar(
                                  radius: 23,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                        'assets/images/download (5).jpeg'),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 250,
                                top: 160,
                                child: CircleAvatar(
                                  radius: 23,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                        'assets/images/download (4).jpeg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 170,
                          top: -10,
                          child: Stack(
                            children: [
                              Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 204, 59, 2),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      text: 'You have ',
                                      style: normalText,
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '3',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                        TextSpan(
                                            text: ' active orders from',
                                            style: normalText),
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
                          top: 43,
                          child: CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.red,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/images/download (1).jpeg'),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 224,
                          top: 43,
                          child: CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.red,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/images/download (2).jpeg'),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 254,
                          top: 43,
                          child: CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.red,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/images/download (3).jpeg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
              ),
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
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/Group 922.png'),
        ),
      ],
    );
  }
}
