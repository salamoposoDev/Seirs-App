import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seirs_app/util/tab_bar_AC.dart';
import 'package:seirs_app/util/tab_bar_DC.dart';

class PowerPage extends StatefulWidget {
  const PowerPage({super.key});

  @override
  State<PowerPage> createState() => _PowerPageState();
}

class _PowerPageState extends State<PowerPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // MAIN POWER TITLE
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Main Power',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),
              ),
            ),
            // POWER SOURCE
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Sumber Listrik : PLN',
              ),
            ),
            const SizedBox(height: 10),

            // STATUS DISPLAY
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            '24 \'C',
                            style: GoogleFonts.bebasNeue(
                                fontSize: 60, color: Colors.white),
                          ),
                          Image.asset(
                            'lib/images/suhu_tinggi.png',
                            height: 50,
                          )
                        ],
                      ),

                      // POWER STATUS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                '98%',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'Efisiensi',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                '350 W',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'Total Daya',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                '0,89%',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'CosPhi',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                height: 150,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 99, 119, 101),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // TAB BAR SENSOR AC DAN DC
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
                right: 15.0,
              ),
              child: TabBar(
                indicatorColor: Color.fromARGB(255, 110, 138, 111),
                labelColor: Color.fromARGB(255, 40, 91, 42),
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'Sensor AC',
                  ),
                  Tab(
                    text: 'Sensor DC',
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  TabBarAc(),
                  TabBarDc(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
