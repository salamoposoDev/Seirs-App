import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seirs_app/util/sensor_plant.dart';

class PlantSensors extends StatefulWidget {
  const PlantSensors({super.key});

  @override
  State<PlantSensors> createState() => _PlantSensorsState();
}

class _PlantSensorsState extends State<PlantSensors> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Plnts Sensors',
              style: GoogleFonts.bebasNeue(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.blueGrey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Suhu Panel'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '30\'C',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 50,
                        ),
                      ),
                      Image.asset(
                        "lib/images/panel.gif",
                        height: 50,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10),
            child: Text('Sensors'),
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return PlantSensorComp(
                  sensorName: 'PPM',
                  sensorIcon: 'lib/images/220v.png',
                  sensorValue: '220v',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
