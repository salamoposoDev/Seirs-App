import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:seirs_app/util/proses_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final List namaTanaman = [
  'lib/images/tanaman1.jpg',
  'lib/images/sawi.jpg',
  'lib/images/tanaman2.jpg',
  'lib/images/tanaman3.jpg',
];

class _HomePageState extends State<HomePage> {
  final data = FirebaseDatabase.instance.ref("Power");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.person,
                            size: 40,
                            color: Color.fromARGB(255, 31, 72, 32),
                          ),
                        ),
                        const SizedBox(width: 5),
                        RichText(
                          text: const TextSpan(
                            text: 'Hi, ',
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Salamoposo',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.cloud_circle,
                              size: 30,
                              color: Color.fromARGB(255, 30, 71, 31),
                            ),
                            const Text('Jan, 1')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Your plants waiting for you!',
                          style: GoogleFonts.bebasNeue(fontSize: 50),
                        ),
                      ),
                      SizedBox(height: 10),
                      // CARD

                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 99, 119, 101),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Today Report',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '31 C',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Image.asset(
                                    'lib/images/suhu_tinggi.png',
                                    height: 50,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Water Level
                                  CircularPercentIndicator(
                                    animation: true,
                                    animationDuration: 1000,
                                    radius: 50,
                                    lineWidth: 15,
                                    backgroundColor: Colors.grey,
                                    percent: 0.7,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.green,
                                    center: Text(
                                      '70%',
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 26,
                                        color: Colors.white,
                                      ),
                                    ),
                                    footer: const Text(
                                      'Water',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'arial',
                                      ),
                                    ),
                                  ),

                                  // Air
                                  CircularPercentIndicator(
                                    animation: true,
                                    animationDuration: 1000,
                                    radius: 50,
                                    lineWidth: 15,
                                    backgroundColor: Colors.grey,
                                    percent: 0.4,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.green,
                                    center: Text(
                                      '40%',
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 26,
                                        color: Colors.white,
                                      ),
                                    ),
                                    footer: const Text(
                                      'Flow',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'arial',
                                      ),
                                    ),
                                  ),
                                  CircularPercentIndicator(
                                    animation: true,
                                    animationDuration: 1000,
                                    radius: 50,
                                    lineWidth: 15,
                                    backgroundColor: Colors.grey,
                                    percent: 0.2,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.green,
                                    center: Text(
                                      '20%',
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 26,
                                        color: Colors.white,
                                      ),
                                    ),
                                    footer: const Text(
                                      'Feed',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'arial',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 220,
                    bottom: 220,
                    child: Image.asset(
                      'lib/images/bunga.png',
                      scale: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: const Text('Tanaman'),
              ),
              SizedBox(
                height: 150,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: namaTanaman.length,
                    itemBuilder: (context, index) {
                      return Expanded(
                        child: SedangProses(
                          gambarTanaman: namaTanaman[index],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
