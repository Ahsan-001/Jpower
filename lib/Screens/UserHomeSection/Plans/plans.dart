import 'package:flutter/material.dart';
import 'package:power/Utils/AppTextStyleAndColors/appColors.dart';
import 'package:power/Utils/colors.dart';

class PlansView extends StatelessWidget {
  const PlansView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kRedColor,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Investment Plans',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width / 18),
            child: Column(
              children: [
                Container(
                    width: 330,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: greyColor.shade400,
                          offset: const Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 4.0,
                          spreadRadius: 0.5,
                        ), //BoxShadow
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('Savings',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 17)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('\$20 - \$50',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15)),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                  boxShadow: [
                                    BoxShadow(
                                      color: greyColor.shade400,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 4.0,
                                      spreadRadius: 0.5,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Center(
                                  child: Text('PLAN 1',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 202, 202)),
                          ),
                          width: 280,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text('Return 1.33%/Day',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('For 75 Days',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('Total 40%/month',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: greyColor.shade400,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 4.0,
                                spreadRadius: 0.5,
                              ), //BoxShadow
                            ],
                          ),
                          child: Center(
                            child: Text('Invest now',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 330,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: greyColor.shade400,
                          offset: const Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 4.0,
                          spreadRadius: 0.5,
                        ), //BoxShadow
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('Savings',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 17)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('\$50 - \$100',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15)),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                  boxShadow: [
                                    BoxShadow(
                                      color: greyColor.shade400,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 4.0,
                                      spreadRadius: 0.5,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Center(
                                  child: Text('PLAN 2',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 202, 202)),
                          ),
                          width: 280,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text('Return 1.5%/Day',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('For 66 Day',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('Total 45%',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: greyColor.shade400,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 4.0,
                                spreadRadius: 0.5,
                              ), //BoxShadow
                            ],
                          ),
                          child: Center(
                            child: Text('Invest now',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 330,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: greyColor.shade400,
                          offset: const Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 4.0,
                          spreadRadius: 0.5,
                        ), //BoxShadow
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('Savings',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 17)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('\$100 - \$300',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15)),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                  boxShadow: [
                                    BoxShadow(
                                      color: greyColor.shade400,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 4.0,
                                      spreadRadius: 0.5,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Center(
                                  child: Text('PLAN 3',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 202, 202)),
                          ),
                          width: 280,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text('Return 1.66%/Day',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('For 60 Day',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('Total 50%/Month',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: greyColor.shade400,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 4.0,
                                spreadRadius: 0.5,
                              ), //BoxShadow
                            ],
                          ),
                          child: Center(
                            child: Text('Invest now',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 330,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: greyColor.shade400,
                          offset: const Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 4.0,
                          spreadRadius: 0.5,
                        ), //BoxShadow
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('Savings',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 17)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('\$300 - \$500',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15)),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                  boxShadow: [
                                    BoxShadow(
                                      color: greyColor.shade400,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 4.0,
                                      spreadRadius: 0.5,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Center(
                                  child: Text('PLAN 4',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 202, 202)),
                          ),
                          width: 280,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text('Return 1.86%/Day',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('For 53 Day',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('Total 56%',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: greyColor.shade400,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 4.0,
                                spreadRadius: 0.5,
                              ), //BoxShadow
                            ],
                          ),
                          child: Center(
                            child: Text('Invest now',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 330,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: greyColor.shade400,
                          offset: const Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 4.0,
                          spreadRadius: 0.5,
                        ), //BoxShadow
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('Savings',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 17)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('\$500 - \$1000',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15)),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                  boxShadow: [
                                    BoxShadow(
                                      color: greyColor.shade400,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 4.0,
                                      spreadRadius: 0.5,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Center(
                                  child: Text('PLAN 5',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 202, 202)),
                          ),
                          width: 280,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text('Return 2.60%/Day',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('For 46 Day',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('Total 65%',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: greyColor.shade400,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 4.0,
                                spreadRadius: 0.5,
                              ), //BoxShadow
                            ],
                          ),
                          child: Center(
                            child: Text('Invest now',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 330,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: greyColor.shade400,
                          offset: const Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 4.0,
                          spreadRadius: 0.5,
                        ), //BoxShadow
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('Savings',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 17)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('\$1000 - \$10,000',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15)),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                  boxShadow: [
                                    BoxShadow(
                                      color: greyColor.shade400,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 4.0,
                                      spreadRadius: 0.5,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Center(
                                  child: Text('PLAN 6',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 202, 202)),
                          ),
                          width: 280,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text('Return 2.5%/Days',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('For 40 Day',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('Total 75%/Month',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: greyColor.shade400,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 4.0,
                                spreadRadius: 0.5,
                              ), //BoxShadow
                            ],
                          ),
                          child: Center(
                            child: Text('Invest now',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 330,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: greyColor.shade400,
                          offset: const Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 4.0,
                          spreadRadius: 0.5,
                        ), //BoxShadow
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('Savings',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 17)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('\$10,000 - \$50,000',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15)),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                  boxShadow: [
                                    BoxShadow(
                                      color: greyColor.shade400,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 4.0,
                                      spreadRadius: 0.5,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Center(
                                  child: Text('PLAN 7',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 202, 202)),
                          ),
                          width: 280,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text('Return 3%/Days',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('For 33 Day',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                                Divider(),
                                Text('Total 90%/month',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: greyColor.shade400,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 4.0,
                                spreadRadius: 0.5,
                              ), //BoxShadow
                            ],
                          ),
                          child: Center(
                            child: Text('Invest now',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
