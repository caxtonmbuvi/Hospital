import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.blueGrey,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back),
            ),
            title: AppText.text(
              'Prescription Details',
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Center(
                    child: Image(
                      image: AssetImage(Assets.images.medicine.path),
                      height: 150,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white,
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
                                  ),
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
                    color: Colors.white,
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
                    color: Colors.white,
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
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Container(
            height: 90,
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: CustomButton(
              onTap: () => _showDeliveryModeSelection(context),
              text: '33 days 3 hours ',
              textColor: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: Colors.blueGrey.withOpacity(0.3),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }

void _showDeliveryModeSelection(BuildContext context) async {
  final selectedMode = await showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: AlertDialog(
          title: const Center(
            child: Text(
              'Select Delivery Mode',
              style: TextStyle(fontSize: 20),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context, 'Delivery');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey.withOpacity(0.6),
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.directions_car),
                    title: AppText.text('Car Delivery',),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context, 'Personal Picking');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey.withOpacity(0.6),
                  ),
                  child: const ListTile(
                    leading: Icon(Icons.directions_walk),
                    title: Text('Personal Picking'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );

  // Handle the selected mode
  if (selectedMode != null) {
    print('Selected mode: $selectedMode');
    // You can perform actions based on the selected mode here
  }
}


}
