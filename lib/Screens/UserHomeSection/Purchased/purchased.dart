import 'package:flutter/material.dart';
import 'package:power/Utils/AppTextStyleAndColors/appColors.dart';

class PurchasedView extends StatelessWidget {
  const PurchasedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Purchased Plans',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              width: 330,
              height: 180,
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 85,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Center(child: Text('Plan1'))),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 85,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child:
                                const Center(child: Text('%PROFIT\nRECEIVED'))),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 105,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Center(child: Text('%TOTAL EARN'))),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 105,
                            height: 75,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Center(
                                child: Text(
                                    'Next Income\nReceived in\nHour: minutes:'))),
                        Container(
                          height: 35,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.red,
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
                          child: const Center(
                            child: Text('SELL PlAN',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
