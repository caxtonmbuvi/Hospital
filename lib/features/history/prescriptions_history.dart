import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital/exports.dart';
import 'package:hospital/general/widgets/apptext.dart';

import '../../gen/assets.gen.dart';

class PrescriptionsHistoryScreen extends StatefulWidget {
  const PrescriptionsHistoryScreen({super.key});

  @override
  State<PrescriptionsHistoryScreen> createState() => _PrescriptionsHistoryScreenState();
}

class _PrescriptionsHistoryScreenState extends State<PrescriptionsHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (

      backgroundColor: Colors.grey[300],

      appBar: AppBar(
        title: AppText.text('Prescriptions History'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Routes.landing);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 5,),

            AppText.text(
                "PAST ORDERS",
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 17,
            ),

            SizedBox(height: 10,),

            // CARD ONE
            SizedBox(
              height: 130,
              child: Card(
                color: Colors.grey[100],
                elevation: 0, // No shadow
                child: Stack (
                  children: [

                    Positioned (
                        right: 0,
                        top: 0,
                        child: Container(
                          height: 30,
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(12),
                            ),
                              color: Colors.green
                          ),
                          child: Center(
                            child: AppText.text(
                                "Delivered",
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        )
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                              height: 60,
                              image: AssetImage(
                                Assets.images.hospital.path,
                              )
                          ),

                          SizedBox(width: 5),

                          Column (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              AppText.text (
                                'Healthstore Nairobi',
                                color: Colors.black,
                              ),

                              SizedBox(height: 5,),

                              Row(
                                children: [
                                  AppText.text (
                                    '20th June, 11:17',
                                    color: Colors.black26,
                                    fontSize: 12,
                                  ),

                                  SizedBox(width: 70,),

                                  AppText.text (
                                    'Ksh. 300',
                                    color: Colors.black26,
                                    fontSize: 12,
                                  ),
                                ],
                              ),

                              SizedBox(height: 10,),

                              SizedBox(
                                height: 1,
                                child: Divider(
                                  height: 1,
                                  color: Colors.green,
                                ),
                              ),

                              SizedBox(height: 10,),

                              Center(
                                child: Row(
                                  children: [

                                    AppText.text (
                                      'Botanical',
                                      color: Colors.black,
                                    ),

                                    SizedBox(width: 30,),

                                    AppText.text (
                                      'x2',
                                      color: Colors.black,
                                    ),

                                    SizedBox(width: 10,),

                                    AppText.text (
                                      '=',
                                      fontSize: 16,
                                      color: Colors.blueGrey,
                                    ),

                                    SizedBox(width: 10,),

                                    AppText.text (
                                      '60 tablets',
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          )

                          // AppText.text(''),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),

            // CARD TWO
            SizedBox(
              height: 130,
              child: Card(
                color: Colors.grey[100],
                elevation: 0, // No shadow
                child: Stack (
                  children: [

                    Positioned (
                        right: 0,
                        top: 0,
                        child: Container(
                          height: 30,
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(12),
                            ),
                              color: Colors.lightBlueAccent[100]
                          ),
                          child: Center(
                            child: AppText.text(
                                "Out Of Stock",
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        )
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                              height: 60,
                              image: AssetImage(
                                Assets.images.hospital.path,
                              )
                          ),

                          SizedBox(width: 5),

                          Column (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              AppText.text (
                                'Healthstore Nairobi',
                                color: Colors.black,
                              ),

                              SizedBox(height: 5,),

                              Row(
                                children: [
                                  AppText.text (
                                    '20th June, 11:17',
                                    color: Colors.black26,
                                    fontSize: 12,
                                  ),

                                  SizedBox(width: 70,),

                                  AppText.text (
                                    'Ksh. 300',
                                    color: Colors.black26,
                                    fontSize: 12,
                                  ),
                                ],
                              ),

                              SizedBox(height: 10,),

                              SizedBox(
                                height: 1,
                                child: Divider(
                                  height: 1,
                                  color: Colors.green,
                                ),
                              ),

                              SizedBox(height: 10,),

                              Center(
                                child: Row(
                                  children: [

                                    AppText.text (
                                      'Botanical',
                                      color: Colors.black,
                                    ),

                                    SizedBox(width: 30,),

                                    AppText.text (
                                      'x2',
                                      color: Colors.black,
                                    ),

                                    SizedBox(width: 10,),

                                    AppText.text (
                                      '=',
                                      fontSize: 16,
                                      color: Colors.blueGrey,
                                    ),

                                    SizedBox(width: 10,),

                                    AppText.text (
                                      '60 tablets',
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          )

                          // AppText.text(''),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),


            SizedBox(height: 15,),

            // CARD TWO
            SizedBox(
              height: 130,
              child: Card(
                color: Colors.grey[100],
                elevation: 0, // No shadow
                child: Stack (
                  children: [

                    Positioned (
                        right: 0,
                        top: 0,
                        child: Container(
                          height: 30,
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(12),
                            ),
                              color: Colors.redAccent[100]
                          ),
                          child: Center(
                            child: AppText.text(
                                "Cancelled",
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        )
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                              height: 60,
                              image: AssetImage(
                                Assets.images.hospital.path,
                              )
                          ),

                          SizedBox(width: 5),

                          Column (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              AppText.text (
                                'Healthstore Nairobi',
                                color: Colors.black,
                              ),

                              SizedBox(height: 5,),

                              Row(
                                children: [
                                  AppText.text (
                                    '30th March, 12:20',
                                    color: Colors.black26,
                                    fontSize: 12,
                                  ),

                                  SizedBox(width: 70,),

                                  AppText.text (
                                    'Ksh. 400',
                                    color: Colors.black26,
                                    fontSize: 12,
                                  ),
                                ],
                              ),

                              SizedBox(height: 10,),

                              SizedBox(
                                height: 1,
                                child: Divider(
                                  height: 1,
                                  color: Colors.green,
                                ),
                              ),

                              SizedBox(height: 10,),

                              Center(
                                child: Row(
                                  children: [

                                    AppText.text (
                                      'Kellizone44',
                                      color: Colors.black,
                                    ),

                                    SizedBox(width: 30,),

                                    AppText.text (
                                      'x1',
                                      color: Colors.black,
                                    ),

                                    SizedBox(width: 10,),

                                    AppText.text (
                                      '=',
                                      fontSize: 16,
                                      color: Colors.blueGrey,
                                    ),

                                    SizedBox(width: 10,),

                                    AppText.text (
                                      '90 tablets',
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          )

                          // AppText.text(''),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
