import 'package:flutter/material.dart';
import 'package:hospital/exports.dart';
import 'package:hospital/gen/assets.gen.dart';
import 'package:hospital/general/widgets/readmore.dart';

class SinglePrescription extends StatefulWidget {
  const SinglePrescription({super.key});

  @override
  State<SinglePrescription> createState() => _SinglePrescriptionState();
}

class _SinglePrescriptionState extends State<SinglePrescription> {
  bool isExpanded = false;
  String text =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
        title: AppText.text(
          'Prescription Details',
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Center(
                  child: Image(image: AssetImage(Assets.images.medicine.path))),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                color: Colors.grey.shade300,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.text(
                            'Petroxine 32',
                            fontSize: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green.shade800,
                                size: 18,
                              ),
                              AppText.text(
                                '4.5',
                                fontWeight: FontWeight.bold,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ReadMore(text: text)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                color: Colors.grey.shade300,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.text(
                                'Price',
                                color: Colors.grey,
                              ),
                              AppText.text(
                                'Ksh. 300',
                                color: Colors.black,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.text(
                                'Pack of',
                                color: Colors.grey,
                              ),
                              AppText.text(
                                '60 tablets',
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppText.text(
                            'Read More',
                            color: Colors.blueAccent,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                color: Colors.grey.shade300,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(
                              height: 50,
                              image: AssetImage(
                                Assets.images.hospital.path,
                              )),
                          const SizedBox(
                            width: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.text('Healthstore'),
                              AppText.text('Ruaraka, Nairobi'),

                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: ,
    );
  }
}
